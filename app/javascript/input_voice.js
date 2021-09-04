function landing (){
  //音声入力APIのインスタンス生成
  var speech = new webkitSpeechRecognition();
  speech.lang = "ja";// 音声認識を行う言語
  speech.interimResults = true;
  speech.continuous = true; // 連続音節の音声認識を行うか
  speech.maxAlternatives = 1; // 認識結果候補の個数
  const startBtn = document.getElementById('talk-btn'); //Let's talkの要素を取得
  const userMessage = document.getElementById("user-message"); //文字列に変換された音声が入る要素を取得
  const programMessage = document.getElementById('program-message'); //プログラムからの応答が入る要素を取得
  let finalTranscript = ''; // 確定した(黒の)認識結果
  const formData = new FormData();//FormDataオブジェクトを作成
  const XHR = new XMLHttpRequest();//リクエストを送信するオブジェクトを生成
  var voice = speechSynthesis.getVoices().find(function(voice){ //音声の種類のオブジェクトを取得（１回目）
    return voice.name === "Google 日本語";
  });

  startBtn.onmousedown = () => {
    speech.start(); //ボタンを押すと入力受付開始
    startBtn.setAttribute("style", "background-color: mediumspringgreen")
  };

  startBtn.onmouseup = () => {
    speech.stop(); //ボタンを離すと入力受付終了
    startBtn.removeAttribute("style", "background-color: mediumspringgreen")
  };
  
  speech.onresult = (e) => {                                //音声認識サービスと通信し、結果を返した時に実行
    let interimTranscript = event.results[0][0].transcript; // 暫定の認識結果
    const user_message_html = `
                              <p class="user-text">
                                ${interimTranscript}
                              </p>
                              `;
    userMessage.innerHTML = user_message_html;               //結果をuserMessageに文字列として含める。
    formData.append('user_message', interimTranscript)  //FormDataオブジェクトの中に、音声入力された文字列を含める
  };
  
  speech.onend = () => {               //音声認識サービスとの接続が切れた時に実行
    XHR.open('POST', '/talks', true);  //リクエスト先を追加
    XHR.responseType = 'json'          //レスポンスをJsonに指定
    XHR.send(formData);                //リクエスト送信
  };
  
  XHR.onload = () => {
    console.log(XHR.response.program_message);
    let program_message_html = `
                  <div>
                    <p class="fadeIn method-text delay-time05">
                      ${XHR.response.program_message[0]}
                    </p>
                  </div>`;
    if (XHR.response.program_message[1]){
      program_message_html = `<div class="program-contents">
                                <p class="fadeIn method-text delay-time05">
                                  ${XHR.response.program_message[1]}
                                </p>
                                <div class="fadeIn delay-time1 program-suggestion">
                                  ${XHR.response.program_message[2]}
                                </div>
                              </div>  `;
    }              
    programMessage.innerHTML = program_message_html; //プログラムからの応答を要素に挿入
    hljs.highlightAll(); //コードブロックのハイライト
    var synthes = new SpeechSynthesisUtterance();  //音声出力APIのインスタンス生成
    var speaker = window.speechSynthesis;
    var voice = speechSynthesis.getVoices().find(function(voice){ //音声の種類のオブジェクトを取得（２回目）
      return voice.name === "Google 日本語";
    });
    //音声の種類をオブジェクトを２回取得しないと、なぜか変更が反映されない

    //音声出力APIにパラメータを設定
    synthes.voice = voice;            //出力する音声の種類
    synthes.volume = 1;              // 出力する音声のボリューム
    synthes.rate = 0.9;                // 出力する音声の速さ
    synthes.pitch = 1;               // 出力する音声のピッチ(高さ)
    synthes.text = XHR.response.program_message;             // 出力する文章
    speaker.speak( synthes );//音声を出力
  };
};

window.addEventListener('load', landing);