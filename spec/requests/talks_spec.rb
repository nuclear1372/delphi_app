require 'rails_helper'

RSpec.describe "Talks", type: :request do
  describe "GET /talks" do
    it "indexアクションにリクエストすると正常にレスポンスが返ってくる" do
      get root_path
      expect(response).to have_http_status(200)
    end
    it 'createアクションにメッセージを送ると返事が返ってくる' do
      post talks_path, params: {user_message: 'おはよう'}
      expect(response.body).to include('おはようございます') 
    end
    it 'おはようとメッセージを送ると返事が帰ってくる' do
      post talks_path, params: {user_message: 'おはよう'}
      expect(response.body).to include('おはようございます')
    end
    it 'こんにちはとメッセージを送ると返事が帰ってくる' do
      post talks_path, params: {user_message: 'こんにちは'}
      expect(response.body).to include('こんにちは')
    end
    it 'こんばんはとメッセージを送ると返事が返ってくる' do
      post talks_path, params: {user_message: 'こんばんは'}
      expect(response.body).to include('こんばんは')
    end
    it '行ってきますとメッセージを送ると返事が帰ってくる' do
      post talks_path, params: {user_message: '行ってきます'}
      expect(response.body).to include('いってらっしゃい')
    end

    it 'eachメソッドが返ってくるユーザーの発話パターン１' do
      post talks_path, params: {user_message: 'Ruby 配列の要素を全て取り出してそれぞれに処理をしたい'}
      expect(response.body).to include('eachの使用を提案。')
    end
    it 'eachメソッドが返ってくるユーザーの発話パターン２' do
      post talks_path, params: {user_message: 'Ruby 配列の値を使って繰り返し処理をしたい'}
      expect(response.body).to include('eachの使用を提案。')
    end
    it 'eachメソッドが返ってくるユーザーの発話パターン３' do
      post talks_path, params: {user_message: 'Ruby 配列の値を使って処理を行いたい'}
      expect(response.body).to include('eachの使用を提案')
    end
    it 'eachメソッドが返ってくるユーザーの発話パターン４' do
      post talks_path, params: {user_message: 'Ruby 配列の要素を使って処理をしたい'}
      expect(response.body).to include('eachの使用を提案')
    end
    it 'eachメソッドが返ってくるユーザーの発話パターン５' do
      post talks_path, params: {user_message: 'Ruby 配列の値で処理を行いたい'}
      expect(response.body).to include('eachの使用を提案')
    end

    it 'include?メソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 配列の中に特定の値が含まれているか知りたい'}
      expect(response.body).to include('include?の使用を提案')
    end
    it 'include?メソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 配列の要素の中に指定した要素があるかどうか確かめたい'}
      expect(response.body).to include('include?の使用を提案')
    end
    it 'include?メソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 配列に特定の要素が含まれているか知りたい'}
      expect(response.body).to include('include?の使用を提案')
    end
    it 'include?メソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 指定した要素が配列にあるかどうか知りたい'}
      expect(response.body).to include('include?の使用を提案')
    end
    it 'include?メソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 特定の値が配列内にあるかどうか確かめたい'}
      expect(response.body).to include('include?の使用を提案')
    end

    it '&メソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 複数の配列を比較して、同じ要素だけを取得したい'}
      expect(response.body).to include("\\u0026メソッドを提案")
    end
    it '&メソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 異なる配列の要素を比べて、共通する要素を取得したい'}
      expect(response.body).to include('\\u0026メソッドを提案')
    end
    it '&メソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 配列同士を比較して、同じ要素を取り出したい'}
      expect(response.body).to include('\\u0026メソッドを提案')
    end
    it '&メソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 複数の配列にある共通の要素を取得したい'}
      expect(response.body).to include('\\u0026メソッドを提案')
    end
    it '&メソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby いくつかの配列の中にある同じ要素を取り出したい'}
      expect(response.body).to include('\\u0026メソッドを提案')
    end

    it '<<メソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 配列に要素を追加したい'}
      expect(response.body).to include('\\u003c\\u003cメソッドを提案')
    end
    it '<<メソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 配列に値を追加したい'}
      expect(response.body).to include('\\u003c\\u003cメソッドを提案')
    end
    it '<<メソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 配列に要素を付け加えたい'}
      expect(response.body).to include('\\u003c\\u003cメソッドを提案')
    end
    it '<<メソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 配列の中に新しく要素を入れたい'}
      expect(response.body).to include('\\u003c\\u003cメソッドを提案')
    end
    it '<<メソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 配列の中に値を入れたい'}
      expect(response.body).to include('\\u003c\\u003cメソッドを提案')
    end

    it 'Rangeオブジェクトのメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 配列内の特定の範囲の要素を取得したい'}
      expect(response.body).to include('Rangeオブジェクトの使用を提案')
    end
    it 'Rangeオブジェクトのメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 配列の指定した範囲の値を取り出したい'}
      expect(response.body).to include('Rangeオブジェクトの使用を提案')
    end
    it 'Rangeオブジェクトのメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 配列の指定した範囲にある要素を取り出したい'}
      expect(response.body).to include('Rangeオブジェクトの使用を提案')
    end
    it 'Rangeオブジェクトのメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 配列にある値の特定の範囲にある値を取得したい'}
      expect(response.body).to include('Rangeオブジェクトの使用を提案')
    end
    it 'Rangeオブジェクトのメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 配列の範囲内にある特定の要素を取り出したい'}
      expect(response.body).to include('Rangeオブジェクトの使用を提案')
    end

    it 'Rangeオブジェクトの変換メソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 配列の要素を別の要素に変換したい'}
      expect(response.body).to include('指定した範囲の値を代入された配列の内容に置き換えます')
    end
    it 'Rangeオブジェクトの変換メソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 配列の値を他の値に置き換えたい'}
      expect(response.body).to include('指定した範囲の値を代入された配列の内容に置き換えます')
    end
    it 'Rangeオブジェクトの変換メソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 配列の要素を指定して置換したい'}
      expect(response.body).to include('指定した範囲の値を代入された配列の内容に置き換えます')
    end
    it 'Rangeオブジェクトの変換メソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 配列の特定の要素を置換したい'}
      expect(response.body).to include('指定した範囲の値を代入された配列の内容に置き換えます')
    end
    it 'Rangeオブジェクトの変換メソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 配列の値を別の値に変えたい'}
      expect(response.body).to include('指定した範囲の値を代入された配列の内容に置き換えます')
    end

    it 'clearメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 配列の要素を全て削除したい'}
      expect(response.body).to include('clearメソッドを提案')
    end
    it 'clearメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 配列の値を全て削除したい'}
      expect(response.body).to include('clearメソッドを提案')
    end
    it 'clearメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 配列にある要素を全て消去したい'}
      expect(response.body).to include('clearメソッドを提案')
    end
    it 'clearメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 配列の値を全て消去したい'}
      expect(response.body).to include('clearメソッドを提案')
    end
    it 'clearメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 配列の要素を全部消したい'}
      expect(response.body).to include('clearメソッドを提案')
    end

    it 'dupメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 配列の要素をコピーしたい'}
      expect(response.body).to include('dupメソッドを提案')
    end
    it 'dupメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 配列の値をコピーしたい'}
      expect(response.body).to include('dupメソッドを提案')
    end
    it 'dupメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 配列の値と同じ値を生成したい'}
      expect(response.body).to include('dupメソッドを提案')
    end
    it 'dupメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 配列の要素と同じ要素を複製したい'}
      expect(response.body).to include('dupメソッドを提案')
    end
    it 'dupメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 配列にある要素と同じ値を作りたい'}
      expect(response.body).to include('dupメソッドを提案')
    end

    it 'countメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 配列内にある要素の数を数えたい'}
      expect(response.body).to include('countメソッドを提案')
    end
    it 'countメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 配列にある値の数を数えたい'}
      expect(response.body).to include('countメソッドを提案')
    end
    it 'countメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 配列に要素が何個あるか知りたい'}
      expect(response.body).to include('countメソッドを提案')
    end
    it 'countメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 配列の中に値がいくつあるか確認したい'}
      expect(response.body).to include('countメソッドを提案')
    end
    it 'countメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 配列に要素がいくつあるか'}
      expect(response.body).to include('countメソッドを提案')
    end
    
    it 'deleteメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 配列から指定した要素を削除したい'}
      expect(response.body).to include('deleteメソッドを提案')
    end
    it 'deleteメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 配列から特定の値を消去したい'}
      expect(response.body).to include('deleteメソッドを提案')
    end
    it 'deleteメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 配列にある要素を削除したい'}
      expect(response.body).to include('deleteメソッドを提案')
    end
    it 'deleteメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 配列にある値を削除したい'}
      expect(response.body).to include('deleteメソッドを提案')
    end
    it 'deleteメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 配列にある特定の要素を消去したい'}
      expect(response.body).to include('deleteメソッドを提案')
    end
    
    it 'indexメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 特定の要素が配列の中のどこにあるか知りたい'}
      expect(response.body).to include('indexメソッドを提案')
    end
    it 'indexメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 指定した要素が配列のどこにあるか確認したい'}
      expect(response.body).to include('indexメソッドを提案')
    end
    it 'indexメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 特定の要素と一致する要素がどこにあるか知りたい'}
      expect(response.body).to include('indexメソッドを提案')
    end
    it 'indexメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 指定した値と一致する値がどこにあるか確認したい'}
      expect(response.body).to include('indexメソッドを提案')
    end
    it 'indexメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 指定した要素と一致する要素が配列のどこにあるか知りたい'}
      expect(response.body).to include('indexメソッドを提案')
    end
    
    it 'sliceメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 配列から特定の要素を取り出したい'}
      expect(response.body).to include('sliceメソッドを提案')
    end
    it 'sliceメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 配列から指定した要素を取得したい'}
      expect(response.body).to include('sliceメソッドを提案')
    end
    it 'sliceメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 配列内の特定の要素のみを取得したい'}
      expect(response.body).to include('sliceメソッドを提案')
    end
    it 'sliceメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 配列内の要素を指定して取り出したい'}
      expect(response.body).to include('sliceメソッドを提案')
    end
    it 'sliceメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 配列の要素を取得したい'}
      expect(response.body).to include('sliceメソッドを提案')
    end

    it 'sumメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 配列内の値の合計を知りたい'}
      expect(response.body).to include('sumメソッドを提案')
    end
    it 'sumメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 配列の要素の合計を知りたい'}
      expect(response.body).to include('sumメソッドを提案')
    end
    it 'sumメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 配列の値の合計を計算したい'}
      expect(response.body).to include('sumメソッドを提案')
    end
    it 'sumメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 配列の要素の合計を計算したい'}
      expect(response.body).to include('sumメソッドを提案')
    end
    it 'sumメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 配列の要素をすべて足したい'}
      expect(response.body).to include('sumメソッドを提案')
    end
    
    it 'uniqメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 異なる配列の中にある重複した要素を削除したい'}
      expect(response.body).to include('uniqメソッドを提案')
    end
    it 'uniqメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 他の配列の中にある同じ要素を消去したい'}
      expect(response.body).to include('uniqメソッドを提案')
    end
    it 'uniqメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 配列から他の配列の中にある要素と同じものを取り除きたい'}
      expect(response.body).to include('uniqメソッドを提案')
    end
    it 'uniqメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 他の配列と同じ要素を削除したい'}
      expect(response.body).to include('uniqメソッドを提案')
    end
    it 'uniqメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 配列の中にある他の配列と重複した要素を整理したい'}
      expect(response.body).to include('uniqメソッドを提案')
    end
    
    it 'assocメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby ハッシュのキーを指定してバリューを取得したい'}
      expect(response.body).to include('assocメソッドを提案')
    end
    it 'assocメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby ハッシュのキーを指定してバリューを取得したい'}
      expect(response.body).to include('assocメソッドを提案')
    end
    it 'assocメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby ハッシュから指定したキーを持つバリューを取り出したい'}
      expect(response.body).to include('assocメソッドを提案')
    end
    it 'assocメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby ハッシュからキーを指定してバリューを取り出したい'}
      expect(response.body).to include('assocメソッドを提案')
    end
    it 'assocメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby ハッシュのキーを指定してバリューを取得したい'}
      expect(response.body).to include('assocメソッドを提案')
    end
    
    it 'clearメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby ハッシュの要素をすべて消去したい'}
      expect(response.body).to include('clearメソッドを提案')
    end
    it 'clearメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby ハッシュの値をすべて消去したい'}
      expect(response.body).to include('clearメソッドを提案')
    end
    it 'clearメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby ハッシュの要素をすべて取り除きたい'}
      expect(response.body).to include('clearメソッドを提案')
    end
    it 'clearメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby ハッシュの値をすべて取り除きたい'}
      expect(response.body).to include('clearメソッドを提案')
    end
    it 'clearメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby ハッシュの中身をすべて削除したい'}
      expect(response.body).to include('clearメソッドを提案')
    end
    
    it 'dupメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby ハッシュの要素をコピーしたい'}
      expect(response.body).to include('同じ内容を持つ新しいハッシュを返します')
    end
    it 'dupメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby ハッシュの値をコピーしたい'}
      expect(response.body).to include('同じ内容を持つ新しいハッシュを返します')
    end
    it 'dupメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 同じ要素を持つハッシュを生成したい'}
      expect(response.body).to include('同じ内容を持つ新しいハッシュを返します')
    end
    it 'dupメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 同じ要素を持つハッシュをコピーしたい'}
      expect(response.body).to include('同じ内容を持つ新しいハッシュを返します')
    end
    it 'dupメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 同じ値を持つハッシュを生成したい'}
      expect(response.body).to include('同じ内容を持つ新しいハッシュを返します')
    end
    
    it 'ハッシュdeleteメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby ハッシュから指定したキーを持つ要素を削除したい'}
      expect(response.body).to include('key に対応する要素を取り除きます')
    end
    it 'ハッシュdeleteメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby ハッシュから指定した要素を削除したい'}
      expect(response.body).to include('key に対応する要素を取り除きます')
    end
    it 'ハッシュdeleteメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 特定の要素をハッシュから消去したい'}
      expect(response.body).to include('key に対応する要素を取り除きます')
    end
    it 'ハッシュdeleteメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby ハッシュから指定したキーを持つ要素を消したい'}
      expect(response.body).to include('key に対応する要素を取り除きます')
    end
    it 'ハッシュdeleteメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 特定の要素をハッシュから削除したい'}
      expect(response.body).to include('key に対応する要素を取り除きます')
    end
    
    it 'eachメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby ハッシュの要素で繰り返し処理をしたい'}
      expect(response.body).to include('ハッシュのキーと値を引数としてブロックを評価します')
    end
    it 'eachメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby ハッシュの値を使って繰り返し処理をしたい'}
      expect(response.body).to include('ハッシュのキーと値を引数としてブロックを評価します')
    end
    it 'eachメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby ハッシュの値をすべて取り出して処理をしたい'}
      expect(response.body).to include('ハッシュのキーと値を引数としてブロックを評価します')
    end
    it 'eachメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby ハッシュで繰り返し処理をしたい'}
      expect(response.body).to include('ハッシュのキーと値を引数としてブロックを評価します')
    end
    it 'eachメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby ハッシュの値でそれぞれ取り出して処理を行いたい'}
      expect(response.body).to include('ハッシュのキーと値を引数としてブロックを評価します')
    end
    

    it 'exceptメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby ハッシュから特定の要素以外をすべて取得したい'}
      expect(response.body).to include('exceptメソッドを提案')
    end
    it 'exceptメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby ハッシュから特定の値以外の他の要素を取り出したい'}
      expect(response.body).to include('exceptメソッドを提案')
    end
    it 'exceptメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby ハッシュから指定した値以外を取得したい'}
      expect(response.body).to include('exceptメソッドを提案')
    end
    it 'exceptメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby ハッシュから指定した値を除いた他の値を取り出したい'}
      expect(response.body).to include('exceptメソッドを提案')
    end
    it 'exceptメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby ハッシュから特定の要素を除いた他の要素を取得したい'}
      expect(response.body).to include('exceptメソッドを提案')
    end
    

    it 'fetch_valuesメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby ハッシュから特定のキーと同じ要素を取得したい'}
      expect(response.body).to include('fetch_valuesメソッドを提案')
    end
    it 'fetch_valuesメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby ハッシュから指定したキーと一致する要素を取得したい'}
      expect(response.body).to include('fetch_valuesメソッドを提案')
    end
    it 'fetch_valuesメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby ハッシュのキーを指定して一致する値を取り出したい'}
      expect(response.body).to include('fetch_valuesメソッドを提案')
    end
    it 'fetch_valuesメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby ハッシュの中の特定のキーと同じキーを持つ値を取得したい'}
      expect(response.body).to include('fetch_valuesメソッドを提案')
    end
    it 'fetch_valuesメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby ハッシュから指定したキーと同じキーを持つ要素を取り出したい'}
      expect(response.body).to include('fetch_valuesメソッドを提案')
    end
    

    it 'selectメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby ハッシュから指定した条件に当てはまる要素を取得したい'}
      expect(response.body).to include('selectメソッドを提案')
    end
    it 'selectメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby ハッシュから特定の条件に該当する要素を取得したい'}
      expect(response.body).to include('selectメソッドを提案')
    end
    it 'selectメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby ハッシュから条件に当てはまる値を取り出したい'}
      expect(response.body).to include('selectメソッドを提案')
    end
    it 'selectメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby ハッシュの特定の条件に該当する値を取り出したい'}
      expect(response.body).to include('selectメソッドを提案')
    end
    it 'selectメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby ハッシュから条件に当てはまる要素を取得したい'}
      expect(response.body).to include('selectメソッドを提案')
    end
    
    it 'key?メソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby ハッシュの中に指定したキーを持つ要素があるか確かめたい'}
      expect(response.body).to include('key?メソッドを提案')
    end
    it 'key?メソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby ハッシュの中に特定のキーを持つ要素があるか調べたい'}
      expect(response.body).to include('key?メソッドを提案')
    end
    it 'key?メソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby ハッシュの中に指定したキーを持つ値があるか確認したい'}
      expect(response.body).to include('key?メソッドを提案')
    end
    it 'key?メソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby ハッシュの中に特定のキーを持つ値があるか調べたい'}
      expect(response.body).to include('key?メソッドを提案')
    end
    it 'key?メソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby ハッシュの中に指定したキーと同じキーを持つ要素があるか確認したい'}
      expect(response.body).to include('key?メソッドを提案')
    end
    
    it 'value?メソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby ハッシュの中に指定したバリューと同じバリューを持つ要素があるか確認したい'}
      expect(response.body).to include('value?メソッドを提案')
    end
    it 'value?メソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby ハッシュの中に特定のバリューをもつ要素があるか調べたい'}
      expect(response.body).to include('value?メソッドを提案')
    end
    it 'value?メソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby ハッシュの中に指定したバリューと同じ値を持つ要素があるか確認したい'}
      expect(response.body).to include('value?メソッドを提案')
    end
    it 'value?メソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby ハッシュに指定した特定のバリューがあるかどうか確かめたい'}
      expect(response.body).to include('value?メソッドを提案')
    end
    it 'value?メソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby ハッシュの中に指定したバリューがあるかどうか確認したい'}
      expect(response.body).to include('value?メソッドを提案')
    end
    
    it 'keysメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby ハッシュ中にあるキーをすべて取得したい'}
      expect(response.body).to include('keysメソッドを提案')
    end
    it 'keysメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby ハッシュのキーをすべて取り出したい'}
      expect(response.body).to include('keysメソッドを提案')
    end
    it 'keysメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby ハッシュのキーだけを取得したい'}
      expect(response.body).to include('keysメソッドを提案')
    end
    it 'keysメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby ハッシュのキーのみを取り出したい'}
      expect(response.body).to include('keysメソッドを提案')
    end
    it 'keysメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby ハッシュのキーだけをすべて取得したい'}
      expect(response.body).to include('keysメソッドを提案')
    end
    
    it 'lengthメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby ハッシュの中の要素の数を数えたい'}
      expect(response.body).to include('lengthメソッドを提案。ハッシュの要素の数を返します。')
    end
    it 'lengthメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby ハッシュにある要素が何個あるか知りたい'}
      expect(response.body).to include('lengthメソッドを提案。ハッシュの要素の数を返します。')
    end
    it 'lengthメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby ハッシュの中に要素がいくつあるか知りたい'}
      expect(response.body).to include('lengthメソッドを提案。ハッシュの要素の数を返します。')
    end
    it 'lengthメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby ハッシュの要素の数を知りたい'}
      expect(response.body).to include('lengthメソッドを提案。ハッシュの要素の数を返します。')
    end
    it 'lengthメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby ハッシュにある要素が何個あるか数えたい'}
      expect(response.body).to include('lengthメソッドを提案。ハッシュの要素の数を返します。')
    end
    
    it 'mergeメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby ハッシュに別のハッシュを結合したい'}
      expect(response.body).to include('mergeメソッドを提案')
    end
    it 'mergeメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby ハッシュに別のハッシュを統合したい'}
      expect(response.body).to include('mergeメソッドを提案')
    end
    it 'mergeメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby ハッシュ同士を結合したい'}
      expect(response.body).to include('mergeメソッドを提案')
    end
    it 'mergeメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 複数のハッシュを統合したい'}
      expect(response.body).to include('mergeメソッドを提案')
    end
    it 'mergeメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 複数のハッシュを結合したい'}
      expect(response.body).to include('mergeメソッドを提案')
    end
    
    it 'to_aメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby ハッシュを配列に変換したい'}
      expect(response.body).to include('to_aメソッドを提案')
    end
    it 'to_aメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby ハッシュを配列に置き換えたい'}
      expect(response.body).to include('to_aメソッドを提案')
    end
    it 'to_aメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby ハッシュを配列に変えたい'}
      expect(response.body).to include('to_aメソッドを提案')
    end
    it 'to_aメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby ハッシュから配列を生成したい'}
      expect(response.body).to include('to_aメソッドを提案')
    end
    it 'to_aメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby ハッシュから配列を作りたい'}
      expect(response.body).to include('to_aメソッドを提案')
    end
    
    it 'valuesメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby ハッシュのバリューをすべて取得したい'}
      expect(response.body).to include('valuesメソッドを提案')
    end
    it 'valuesメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby ハッシュの中のバリューのみ取得したい'}
      expect(response.body).to include('valuesメソッドを提案')
    end
    it 'valuesメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby ハッシュからバリューだけを取り出したい'}
      expect(response.body).to include('valuesメソッドを提案')
    end
    it 'valuesメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby ハッシュからバリューをすべて取り出したい'}
      expect(response.body).to include('valuesメソッドを提案')
    end
    it 'valuesメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby ハッシュのバリューのみ取り出したい'}
      expect(response.body).to include('valuesメソッドを提案')
    end
    
    it '文字sliceメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 文字列の中の特定の部分を取得したい'}
      expect(response.body).to include('sliceメソッドを提案。Rangeオブジェクトで開始位置と終端を指定すると、部分文字列を新しく作って返します。')
    end
    it '文字sliceメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 文字列の範囲を指定して取得したい'}
      expect(response.body).to include('sliceメソッドを提案。Rangeオブジェクトで開始位置と終端を指定すると、部分文字列を新しく作って返します。')
    end
    it '文字sliceメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 文字列の指定した部分のみ取得したい'}
      expect(response.body).to include('sliceメソッドを提案。Rangeオブジェクトで開始位置と終端を指定すると、部分文字列を新しく作って返します。')
    end
    it '文字sliceメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 文字列の特定の範囲を取得したい'}
      expect(response.body).to include('sliceメソッドを提案。Rangeオブジェクトで開始位置と終端を指定すると、部分文字列を新しく作って返します。')
    end
    it '文字sliceメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 文字列中の特定の文字を取得したい'}
      expect(response.body).to include('sliceメソッドを提案。Rangeオブジェクトで開始位置と終端を指定すると、部分文字列を新しく作って返します。')
    end
    
    it 'self[substr] = valが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 文字列の指定した部分を別の文字列に置き換えたい'}
      expect(response.body).to include('self[substr] = valを提案')
    end
    it 'self[substr] = valが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 文字列の特定の部分を他の文字列に変換したい'}
      expect(response.body).to include('self[substr] = valを提案')
    end
    it 'self[substr] = valが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 文字列の特定の部分を他の文字列に変えたい'}
      expect(response.body).to include('self[substr] = valを提案')
    end
    it 'self[substr] = valが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 文字列の指定した部分を他の文字列に変換したい'}
      expect(response.body).to include('self[substr] = valを提案')
    end
    it 'self[substr] = valが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 文字列のある部分を他の文字列に置き換えたい'}
      expect(response.body).to include('self[substr] = valを提案')
    end
    

    it 'self[regexp] = valメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 文字列の中の正規表現に当てはまる部分を別の文字列に変換したい'}
      expect(response.body).to include('self[regexp] = valを提案')
    end
    it 'self[regexp] = valメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 正規表現を使って、文字列の特定の部分を他の文字列に置き換えたい'}
      expect(response.body).to include('self[regexp] = valを提案')
    end
    it 'self[regexp] = valメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 正規表現に当てはまる文字を別の文字に置き換えたい'}
      expect(response.body).to include('self[regexp] = valを提案')
    end
    it 'self[regexp] = valメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 正規表現に当てはまった部分を別の文字に置き換えたい'}
      expect(response.body).to include('self[regexp] = valを提案')
    end
    it 'self[regexp] = valメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 指定した正規表現に当てはまる文字列を別の文字に変換したい'}
      expect(response.body).to include('self[regexp] = valを提案')
    end
    

    it 'capitalizeメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 文字列の頭文字を大文字に変換したい'}
      expect(response.body).to include('capitalizeメソッドを提案')
    end
    it 'capitalizeメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 文字列の先頭を大文字に置き換えたい'}
      expect(response.body).to include('capitalizeメソッドを提案')
    end
    it 'capitalizeメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 頭文字を大文字に変換したい'}
      expect(response.body).to include('capitalizeメソッドを提案')
    end
    it 'capitalizeメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 文字列の先頭を大文字にしたい'}
      expect(response.body).to include('capitalizeメソッドを提案')
    end
    it 'capitalizeメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 文字列の頭を大文字に変換したい'}
      expect(response.body).to include('capitalizeメソッドを提案')
    end
    

    it 'casecmp?メソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 特定の文字列と一致するかどうか確かめたい'}
      expect(response.body).to include('casecmp?メソッドを提案')
    end
    it 'casecmp?メソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 文字列と他の文字列が一致するかどうか知りたい'}
      expect(response.body).to include('casecmp?メソッドを提案')
    end
    it 'casecmp?メソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 複数の文字列が同じものかどうか確かめたい'}
      expect(response.body).to include('casecmp?メソッドを提案')
    end
    it 'casecmp?メソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 文字列同士を比較して同じ文字列かどうか確かめたい'}
      expect(response.body).to include('casecmp?メソッドを提案')
    end
    it 'casecmp?メソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 文字列を比較して一致するかどうか確かめたい'}
      expect(response.body).to include('casecmp?メソッドを提案')
    end
    
    
    it 'countメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 文字列の中に特定の文字がいくつあるか数えたい'}
      expect(response.body).to include('引数に指定された文字が対象の文字列にいくつあるか数えます。')
    end
    it 'countメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 文字列の中に指定した文字が何個あるか数えたい'}
      expect(response.body).to include('引数に指定された文字が対象の文字列にいくつあるか数えます。')
    end
    it 'countメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 文字列の中に特定の文字がいくつあるか確認したい'}
      expect(response.body).to include('引数に指定された文字が対象の文字列にいくつあるか数えます。')
    end
    it 'countメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 特定の文字が何個あるか知りたい'}
      expect(response.body).to include('引数に指定された文字が対象の文字列にいくつあるか数えます。')
    end
    it 'countメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 文字列の中に指定した文字がいくつあるか知りたい'}
      expect(response.body).to include('引数に指定された文字が対象の文字列にいくつあるか数えます。')
    end
    

    it '文字deleteメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 文字列から特定の文字を削除したい'}
      expect(response.body).to include('対象の文字列から引数に含まれる文字を取り除いた文字列を生成して返します')
    end
    it '文字deleteメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 文字列から指定した文字を取り除きたい'}
      expect(response.body).to include('対象の文字列から引数に含まれる文字を取り除いた文字列を生成して返します')
    end
    it '文字deleteメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 文字列から特定の文字を消去したい'}
      expect(response.body).to include('対象の文字列から引数に含まれる文字を取り除いた文字列を生成して返します')
    end
    it '文字deleteメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 文字列に含まれる特定の文字列を削除したい'}
      expect(response.body).to include('対象の文字列から引数に含まれる文字を取り除いた文字列を生成して返します')
    end
    it '文字deleteメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 文字列に含まれる文字を指定して取り除きたい'}
      expect(response.body).to include('対象の文字列から引数に含まれる文字を取り除いた文字列を生成して返します')
    end
    

    it 'downcaseメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 特定の文字列の大文字を小文字に変換したい'}
      expect(response.body).to include('downcaseメソッドを提案')
    end
    it 'downcaseメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 指定した文字列の大文字を小文字に置き換えたい'}
      expect(response.body).to include('downcaseメソッドを提案')
    end
    it 'downcaseメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 文字列に含まれる大文字を小文字に変換したい'}
      expect(response.body).to include('downcaseメソッドを提案')
    end
    it 'downcaseメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 文字列の中の大文字を小文字に置き換えたい'}
      expect(response.body).to include('downcaseメソッドを提案')
    end
    it 'downcaseメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 大文字を小文字に変換したい'}
      expect(response.body).to include('downcaseメソッドを提案')
    end
    

    it '文字include?メソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 文字列の中に特定の文字が含まれているか確認したい'}
      expect(response.body).to include('対象の文字列中に引数の部分文字列が含まれていれば真を返します')
    end
    it '文字include?メソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 文字列の中に指定した文字が含まれているか知りたい'}
      expect(response.body).to include('対象の文字列中に引数の部分文字列が含まれていれば真を返します')
    end
    it '文字include?メソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 文字列の中にある文字が含まれているかどうか知りたい'}
      expect(response.body).to include('対象の文字列中に引数の部分文字列が含まれていれば真を返します')
    end
    it '文字include?メソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 文字列の中に特定の文字があるか確認したい'}
      expect(response.body).to include('対象の文字列中に引数の部分文字列が含まれていれば真を返します')
    end
    it '文字include?メソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 文字列の中に指定した文字があるか知りたい'}
      expect(response.body).to include('対象の文字列中に引数の部分文字列が含まれていれば真を返します')
    end
    

    it 'insertメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 文字列の中に指定した文字を挿入したい'}
      expect(response.body).to include('insertメソッドを提案')
    end
    it 'insertメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 文字列の中に特定の文字を入れたい'}
      expect(response.body).to include('insertメソッドを提案')
    end
    it 'insertメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 文字列の中に他の文字を入れたい'}
      expect(response.body).to include('insertメソッドを提案')
    end
    it 'insertメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 文字列の中に別の文字列を入れたい'}
      expect(response.body).to include('insertメソッドを提案')
    end
    it 'insertメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 文字列の中に別の文字列を挿入したい'}
      expect(response.body).to include('insertメソッドを提案')
    end
    

    it '文字lengthメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 文字列の文字数を数えたい'}
      expect(response.body).to include('文字列の文字数を返します')
    end
    it '文字lengthメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 文字列が何文字あるか知りたい'}
      expect(response.body).to include('文字列の文字数を返します')
    end
    it '文字lengthメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 文字列が何文字か知りたい'}
      expect(response.body).to include('文字列の文字数を返します')
    end
    it '文字lengthメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 文字数を知りたい'}
      expect(response.body).to include('文字列の文字数を返します')
    end
    it '文字lengthメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 文字がいくつあるか知りたい'}
      expect(response.body).to include('文字列の文字数を返します')
    end
    

    it 'reverseメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 文字列の順番を逆にしたい'}
      expect(response.body).to include('reverseメソッドを提案')
    end
    it 'reverseメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 文字列の順番を反対にしたい'}
      expect(response.body).to include('reverseメソッドを提案')
    end
    it 'reverseメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 文字列の並び方を逆さまにしたい'}
      expect(response.body).to include('reverseメソッドを提案')
    end
    it 'reverseメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 文字列の並びを反転させたい'}
      expect(response.body).to include('reverseメソッドを提案')
    end
    it 'reverseメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 文字列の並びを逆にしたい'}
      expect(response.body).to include('reverseメソッドを提案')
    end
    
    it 'absメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 数値の絶対値を知りたい'}
      expect(response.body).to include('absメソッドを提案')
    end
    it 'absメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 数値の絶対値を取得したい'}
      expect(response.body).to include('absメソッドを提案')
    end
    it 'absメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 数値の絶対値を確認したい'}
      expect(response.body).to include('absメソッドを提案')
    end
    it 'absメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 数値の絶対値を計算したい'}
      expect(response.body).to include('absメソッドを提案')
    end
    it 'absメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 数値の絶対値を求めたい'}
      expect(response.body).to include('absメソッドを提案')
    end
    

    it 'gcdメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 数値を指定した数で割った時の最大公約数を知りたい'}
      expect(response.body).to include('gcdメソッドを提案')
    end
    it 'gcdメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 数値を特定の数で割った時の最大公約数を知りたい'}
      expect(response.body).to include('gcdメソッドを提案')
    end
    it 'gcdメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 数を割った時の最大公約数を知りたい'}
      expect(response.body).to include('gcdメソッドを提案')
    end
    it 'gcdメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 特定の数値が割り切れる数で一番大きい数値を知りたい'}
      expect(response.body).to include('gcdメソッドを提案')
    end
    it 'gcdメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 最大公約数を確認したい'}
      expect(response.body).to include('gcdメソッドを提案')
    end
    

    it 'oddメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 特定の数値が奇数かどうか知りたい'}
      expect(response.body).to include('oddメソッドを提案')
    end
    it 'oddメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 特定の値が奇数かどうか確認したい'}
      expect(response.body).to include('oddメソッドを提案')
    end
    it 'oddメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 指定した値が奇数なのか知りたい'}
      expect(response.body).to include('oddメソッドを提案')
    end
    it 'oddメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 値が奇数かどうか確かめたい'}
      expect(response.body).to include('oddメソッドを提案')
    end
    it 'oddメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 値が奇数か確かめたい'}
      expect(response.body).to include('oddメソッドを提案')
    end
    
    it 'roundメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 数値を切りの良い数値に丸めたい'}
      expect(response.body).to include('roundメソッドを提案')
    end
    it 'roundメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 指定した数値を10の倍数に丸めたい'}
      expect(response.body).to include('roundメソッドを提案')
    end
    it 'roundメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 特定の値を10の倍数で丸めたい'}
      expect(response.body).to include('roundメソッドを提案')
    end
    it 'roundメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 特定の値の端数を切って丸めたい'}
      expect(response.body).to include('roundメソッドを提案')
    end
    it 'roundメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 値の端数を捨てて丸めたい'}
      expect(response.body).to include('roundメソッドを提案')
    end
    

    it 'timesメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 回数を指定して繰り返し処理をしたい'}
      expect(response.body).to include('timesメソッドを提案')
    end
    it 'timesメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 特定の回数だけ繰り返し処理をしたい'}
      expect(response.body).to include('timesメソッドを提案')
    end
    it 'timesメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 繰り返し処理の回数を指定して処理をしたい'}
      expect(response.body).to include('timesメソッドを提案')
    end
    it 'timesメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 特定の回数だけ処理を繰り返したい'}
      expect(response.body).to include('timesメソッドを提案')
    end
    it 'timesメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby ある回数だけ処理を反復したい'}
      expect(response.body).to include('timesメソッドを提案')
    end
    

    it 'to_fメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 数値を小数に変換したい'}
      expect(response.body).to include('to_fメソッドを提案')
    end
    it 'to_fメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 数値で小数で扱いたい'}
      expect(response.body).to include('to_fメソッドを提案')
    end
    it 'to_fメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 値を小数に変えたい'}
      expect(response.body).to include('to_fメソッドを提案')
    end
    it 'to_fメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 数をfloatクラスに変換したい'}
      expect(response.body).to include('to_fメソッドを提案')
    end
    it 'to_fメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 値を小数で処理したい'}
      expect(response.body).to include('to_fメソッドを提案')
    end
    

    it 'named_capturesメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 値の特定の部分に名前をつけて抜き出したい'}
      expect(response.body).to include('named_capturesメソッドを提案')
    end
    it 'named_capturesメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 値の指定した部分にタグをつけてキャプチャしたい'}
      expect(response.body).to include('named_capturesメソッドを提案')
    end
    it 'named_capturesメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 値の特定の部分を明示して取り出したい'}
      expect(response.body).to include('named_capturesメソッドを提案')
    end
    it 'named_capturesメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 値のある部分だけを名前をつけてキャプチャしたい'}
      expect(response.body).to include('named_capturesメソッドを提案')
    end
    it 'named_capturesメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 値のある部分のみを明示して取り出したい'}
      expect(response.body).to include('named_capturesメソッドを提案')
    end
    

    it 'randメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby ランダムな数字を生成したい'}
      expect(response.body).to include('randメソッドを提案')
    end
    it 'randメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 乱数を生成したい'}
      expect(response.body).to include('randメソッドを提案')
    end
    it 'randメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 乱数を使用したい'}
      expect(response.body).to include('randメソッドを提案')
    end
    it 'randメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby ランダムな数値を使用したい'}
      expect(response.body).to include('randメソッドを提案')
    end
    it 'randメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 乱数を扱いたい'}
      expect(response.body).to include('randメソッドを提案')
    end
    

    it 'bsearchメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 配列の中に条件を満たす値がどこにあるか検索したい'}
      expect(response.body).to include('bsearchメソッドを提案')
    end
    it 'bsearchメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 配列にある特定の条件に当てはまる値がどこにあるか知りたい'}
      expect(response.body).to include('bsearchメソッドを提案')
    end
    it 'bsearchメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 配列にある特定の条件に該当する値がどこに探したい'}
      expect(response.body).to include('bsearchメソッドを提案')
    end
    it 'bsearchメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 配列にある特定の値がどこにあるか探したい'}
      expect(response.body).to include('bsearchメソッドを提案')
    end
    it 'bsearchメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 配列にある特定の値を見つけたい'}
      expect(response.body).to include('bsearchメソッドを提案')
    end
    

    it '範囲eachメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 範囲を指定して繰り返し処理をしたい'}
      expect(response.body).to include('範囲内の要素に対して繰り返します')
    end
    it '範囲eachメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 特定の範囲内で繰り返し処理をしたい'}
      expect(response.body).to include('範囲内の要素に対して繰り返します')
    end
    it '範囲eachメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 指定した範囲の中にある要素で繰り返し処理をしたい'}
      expect(response.body).to include('範囲内の要素に対して繰り返します')
    end
    it '範囲eachメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby ある範囲の中で繰り返し処理を行いたい'}
      expect(response.body).to include('範囲内の要素に対して繰り返します')
    end
    it '範囲eachメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 範囲を限定して繰り返し処理をしたい'}
      expect(response.body).to include('範囲内の要素に対して繰り返します')
    end

    
    it 'minmaxメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 最大値と最小値を知りたい'}
      expect(response.body).to include('minmaxメソッドを提案')
    end
    it 'minmaxメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 最大値と最小値を取得したい'}
      expect(response.body).to include('minmaxメソッドを提案')
    end
    it 'minmaxメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 最も大きい数と小さい数を取得したい'}
      expect(response.body).to include('minmaxメソッドを提案')
    end
    it 'minmaxメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 最も大きい数と小さい数を知りたい'}
      expect(response.body).to include('minmaxメソッドを提案')
    end
    it 'minmaxメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 最大値と最小値が何か求めたい'}
      expect(response.body).to include('minmaxメソッドを提案')
    end


    it 'chunkメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 配列の要素を評価した結果で仕分けをしたい'}
      expect(response.body).to include('chunkメソッドを提案')
    end
    it 'chunkメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 配列の要素を評価した結果を明示したい'}
      expect(response.body).to include('chunkメソッドを提案')
    end
    it 'chunkメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 配列の要素を評価した結果で要素を分別したい'}
      expect(response.body).to include('chunkメソッドを提案')
    end
    it 'chunkメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 配列の要素を評価した結果をを元に仕分けしたい'}
      expect(response.body).to include('chunkメソッドを提案')
    end
    it 'chunkメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 配列の要素を評価した結果によってグループ分けしたい'}
      expect(response.body).to include('chunkメソッドを提案')
    end
    

    it 'flat_mapメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 複数の配列の要素に処理を加えて1つの配列にしたい'}
      expect(response.body).to include('flat_mapメソッドを提案')
    end
    it 'flat_mapメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 複数の配列の要素に処理を1つの配列に結合したい'}
      expect(response.body).to include('flat_mapメソッドを提案')
    end
    it 'flat_mapメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 複数の配列の要素に処理を加えた1つの配列を作りたい'}
      expect(response.body).to include('flat_mapメソッドを提案')
    end
    it 'flat_mapメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby いくつかの配列の要素を処理して1つの配列にしたい'}
      expect(response.body).to include('flat_mapメソッドを提案')
    end
    it 'flat_mapメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby いくつかの配列の要素すべてに処理を加えて1つの配列にしたい'}
      expect(response.body).to include('flat_mapメソッドを提案')
    end
    

    it 'filter_mapメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 条件に当てはまる要素のみで配列を作りたい'}
      expect(response.body).to include('filter_mapメソッドを提案')
    end
    it 'filter_mapメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 特定の条件に当てはまる要素で配列にしたい'}
      expect(response.body).to include('filter_mapメソッドを提案')
    end
    it 'filter_mapメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 指定した条件が成立する要素のみを配列にしたい'}
      expect(response.body).to include('filter_mapメソッドを提案')
    end
    it 'filter_mapメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 指定した条件が成り立つ値を配列に格納したい'}
      expect(response.body).to include('filter_mapメソッドを提案')
    end
    it 'filter_mapメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 特定の条件に当てはまる要素を配列に格納したい'}
      expect(response.body).to include('filter_mapメソッドを提案')
    end
    

    it 'grepメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 指定した要素と一致する要素のみ配列を作りたい'}
      expect(response.body).to include('grepメソッドを提案')
    end
    it 'grepメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 特定の要素と同じ要素を配列に格納したい'}
      expect(response.body).to include('grepメソッドを提案')
    end
    it 'grepメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 指定した要素と一致する要素を抜き出して配列にしたい'}
      expect(response.body).to include('grepメソッドを提案')
    end
    it 'grepメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 特定の要素と同じ要素を抜き出して配列にしたい'}
      expect(response.body).to include('grepメソッドを提案')
    end
    it 'grepメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 正規表現を使って当てはまる要素を配列に格納したい'}
      expect(response.body).to include('grepメソッドを提案')
    end
    

    it 'group_byメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 要素を評価した結果をハッシュで管理したい'}
      expect(response.body).to include('group_byメソッドを提案')
    end
    it 'group_byメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 要素に処理を加えた結果をハッシュで管理したい'}
      expect(response.body).to include('group_byメソッドを提案')
    end
    it 'group_byメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 要素に処理を加えた結果をハッシュで作成したい'}
      expect(response.body).to include('group_byメソッドを提案')
    end
    it 'group_byメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 要素を評価した結果をハッシュに格納したい'}
      expect(response.body).to include('group_byメソッドを提案')
    end
    it 'group_byメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 要素を評価した結果をハッシュで管理したい'}
      expect(response.body).to include('group_byメソッドを提案')
    end
    

    it 'partitionメソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 配列の中の条件を満たす要素とそうでないもので二分したい'}
      expect(response.body).to include('partitionメソッドを提案')
    end
    it 'partitionメソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 配列の要素を条件に当てはまるものとそれ以外で分割したい'}
      expect(response.body).to include('partitionメソッドを提案')
    end
    it 'partitionメソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 配列の要素を条件によって分別したい'}
      expect(response.body).to include('partitionメソッドを提案')
    end
    it 'partitionメソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 配列の要素を特定の条件で評価した結果で二分したい'}
      expect(response.body).to include('partitionメソッドを提案')
    end
    it 'partitionメソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 配列の要素を条件に当てはまるものとそうでないもので二分したい'}
      expect(response.body).to include('partitionメソッドを提案')
    end
    

    it 'none?メソッドが返ってくるユーザーの発話パターン1' do
      post talks_path, params: {user_message: 'Ruby 配列のすべての要素が特定の条件に当てはまるか確認したい'}
      expect(response.body).to include('none?メソッドを提案')
    end
    it 'none?メソッドが返ってくるユーザーの発話パターン2' do
      post talks_path, params: {user_message: 'Ruby 配列の要素すべてが指定した条件に当てはまるか知りたい'}
      expect(response.body).to include('none?メソッドを提案')
    end
    it 'none?メソッドが返ってくるユーザーの発話パターン3' do
      post talks_path, params: {user_message: 'Ruby 配列に要素すべてが特定の条件に当てはまらないことを確認したい'}
      expect(response.body).to include('none?メソッドを提案')
    end
    it 'none?メソッドが返ってくるユーザーの発話パターン4' do
      post talks_path, params: {user_message: 'Ruby 配列の要素すべてが指定した条件を満たさないことを確認したい'}
      expect(response.body).to include('none?メソッドを提案')
    end
    it 'none?メソッドが返ってくるユーザーの発話パターン5' do
      post talks_path, params: {user_message: 'Ruby 配列の要素すべてが条件を満たさないことを確認したい'}
      expect(response.body).to include('none?メソッドを提案')
    end
    
  end
end
