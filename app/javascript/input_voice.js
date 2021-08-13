function randing (){
  //音声入力APIのインスタンス生成
  var speech = new webkitSpeechRecognition();
  speech.lang = "ja";// 音声認識を行う言語
  speech.interimResults = true;
  speech.continuous = true; // 連続音節の音声認識を行うか
  speech.maxAlternatives = 1; // 認識結果候補の個数
  const startBtn = document.getElementById('talk-btn'); //Let's talkの要素を取得
  const resultDiv = document.getElementById("result-div"); //文字列に変換された音声が入る要素を取得
  const text = 'こんにちは'; //プログラムの仮応答
  const programResult = document.getElementById('program-result'); //プログラムからの応答が入る要素を取得
  let finalTranscript = ''; // 確定した(黒の)認識結果

  //音声出力APIのインスタンス生成
  var synthes = new SpeechSynthesisUtterance();
  //音声出力APIにパラメータを設定
  synthes.lang = 'ja-JP';          //出力する言語
  synthes.voiveURI = 1;            //出力する音声の種類
  synthes.volume = 1;              // 出力する音声のボリューム
  synthes.rate = 1;                // 出力する音声の速さ
  synthes.pitch = 2;               // 出力する音声のピッチ(高さ)
  synthes.text = text;             // 出力する文章
  

  speech.onresult = (e) => {
    let interimTranscript = ''; // 暫定(灰色)の認識結果
    for (let i = event.resultIndex; i < event.results.length; i++) {
      let transcript = event.results[i][0].transcript;
      if (event.results[i].isFinal) {
        finalTranscript += transcript;
      } else {
        interimTranscript = transcript;
      }
    }
    resultDiv.innerText =  finalTranscript + interimTranscript;
    const formData = new FormData();//FormDataオブジェクトを作成
    formData.append('user_message', resultDiv.textContent)//FormDataオブジェクトの中に音声入力された文字列を含める
    const XHR = new XMLHttpRequest();//リクエストを送信するオブジェクトを生成
    XHR.open('POST', '/talks', true);//リクエスト先を追加
    XHR.responseType = 'json'//レスポンスをJsonに指定
    XHR.send(formData);//リクエスト送信
  };
  
  startBtn.onmousedown = () => {
    speech.start(); //ボタンを押すと入力受付開始
  };
  startBtn.onmouseup = () => {
    speech.stop(); //ボタンを離すと入力受付終了

    programResult.innerHTML = text; //プログラムの仮応答を要素に挿入
    speechSynthesis.speak( synthes );
  };
};

window.addEventListener('load', randing);