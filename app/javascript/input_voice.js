function randing (){
  var speech = new webkitSpeechRecognition();
  speech.lang = "ja";// 音声認識を行う言語
  speech.interimResults = true;
  speech.continuous = true; // 連続音節の音声認識を行うか
  speech.maxAlternatives = 1; // 認識結果候補の個数
  const startBtn = document.getElementById('talk-btn');
  const resultDiv = document.getElementById("result-div");
  let finalTranscript = ''; // 確定した(黒の)認識結果

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
    resultDiv.innerHTML = finalTranscript + '<i style="color:#ddd;">' + interimTranscript + '</i>';
  };
  
  startBtn.onmousedown = () => {
    speech.start();
  };
  startBtn.onmouseup = () => {
    speech.stop();
  };
};

window.addEventListener('load', randing);