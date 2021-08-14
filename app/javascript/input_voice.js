function landing (){
  //音声入力APIのインスタンス生成
  var speech = new webkitSpeechRecognition();
  speech.lang = "ja";// 音声認識を行う言語
  speech.interimResults = true;
  speech.continuous = true; // 連続音節の音声認識を行うか
  speech.maxAlternatives = 1; // 認識結果候補の個数
  const startBtn = document.getElementById('talk-btn'); //Let's talkの要素を取得
  const resultDiv = document.getElementById("result-div"); //文字列に変換された音声が入る要素を取得
  const programResult = document.getElementById('program-result'); //プログラムからの応答が入る要素を取得
  let finalTranscript = ''; // 確定した(黒の)認識結果
  const formData = new FormData();//FormDataオブジェクトを作成
  const XHR = new XMLHttpRequest();//リクエストを送信するオブジェクトを生成

  startBtn.onmousedown = () => {
    speech.start(); //ボタンを押すと入力受付開始
  };
  startBtn.onmouseup = () => {
    speech.stop(); //ボタンを離すと入力受付終了
  };
  
  speech.onresult = (e) => {                                //音声認識サービスと通信し、結果を返した時に実行
    let interimTranscript = event.results[0][0].transcript; // 暫定の認識結果
    resultDiv.innerText =  interimTranscript;               //結果をresultDivに文字列として含める。
    formData.append('user_message', resultDiv.textContent)  //FormDataオブジェクトの中に、音声入力された文字列を含める
  };
  
  speech.onend = () => {               //音声認識サービスとの接続が切れた時に実行
    XHR.open('POST', '/talks', true);  //リクエスト先を追加
    XHR.responseType = 'json'          //レスポンスをJsonに指定
    XHR.send(formData);                //リクエスト送信
  };
  
  XHR.onload = () => {
    programResult.innerText = XHR.response.program_message; //プログラムからの応答を要素に挿入
    var synthes = new SpeechSynthesisUtterance();  //音声出力APIのインスタンス生成
    //音声出力APIにパラメータを設定
    synthes.lang = 'ja-JP';          //出力する言語
    synthes.voiveURI = 1;            //出力する音声の種類
    synthes.volume = 1;              // 出力する音声のボリューム
    synthes.rate = 1;                // 出力する音声の速さ
    synthes.pitch = 2;               // 出力する音声のピッチ(高さ)
    synthes.text = programResult.textContent;             // 出力する文章
    speechSynthesis.speak( synthes );//音声を出力
  };
};

window.addEventListener('load', landing);