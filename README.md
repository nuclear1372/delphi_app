# アプリケーション名 
Delphi_app
# アプリケーション概要
Delphiは、必要なメソッドを素早く提案し、Rubyでコーディングをする人たちのサポートをします。
# URL
https://delphi-35642.herokuapp.com/
# 利用方法
Rubyで実行したい処理を音声入力すると、その処理に応じた組み込みメソッドを提案するとともにサンプルコードを返します。
利用についての詳細は、トップページ右上のメニューから参照できます。
[![Image from Gyazo](https://i.gyazo.com/7fe75390f439576fea2bde316efaaba0.gif)](https://gyazo.com/7fe75390f439576fea2bde316efaaba0)
# 目指した課題解決
適切なメソッドを素早く提案し、ストレスフリーなコーディングをサポートします。
# 洗い出した要件定義
- メソッド提案機能
- 音声入力機能
- 音声出力機能
- ユーザー管理機能
- 過去ログ一覧機能
# 実装した機能についての画像やその説明
## 音声入力機能
- 画面中央のマイクボタンを押し続けることで音声入力ができます。入力受付中に受け取ったユーザーの音声を読み取ります。
[![Image from Gyazo](https://i.gyazo.com/98744bfcd7e33421a76676781784d43c.png)](https://gyazo.com/98744bfcd7e33421a76676781784d43c)
## メソッド提案機能
- ユーザーの音声に含まれるワードとアプリケーションからの提案内容自体に設定されているキーワードを照会し、キーワードがいくつ当てはまったかのスコアを記録します。
その中で、最もスコアが高いもの（返答として信頼性が高いもの）をユーザーに提案します。
[![Image from Gyazo](https://i.gyazo.com/f04bad42a89cc4a4f6adb5ec2e90697a.png)](https://gyazo.com/f04bad42a89cc4a4f6adb5ec2e90697a)
# 実装予定の機能
- ユーザー管理機能
- 過去ログ一覧機能
# データベース設計
[![Image from Gyazo](https://i.gyazo.com/002a011879833263793da560985ceeb5.png)](https://gyazo.com/002a011879833263793da560985ceeb5)
# ローカルでの動作方法
```
$ git clone https://github.com/nuclear1372/delphi_app.git
$ cd delphi_app
$ bundle install
$ rails s
```  
# 開発環境
- HTML
- CSS
- Ruby 2.6.5
- Ruby on Rails 6.0.0
- JavaScript
- JQuery 3.6.0
- Heroku
