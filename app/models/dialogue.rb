class Dialogue
  include ActiveModel::Model

  def self.rooting(user_message)
    duelist_keywords = ['遊戯','武藤遊戯','海馬','マリク','ペガサス'] #Duelistリアクションの起動キーワード
    greeting_keywords = ['おはよう', 'こんにちは', 'こんばんは','お疲れ様', '自己紹介して', '疲れた', '行ってきます'] #挨拶のリアクションの起動キーワード
    error_message_list = [
      'すみません、よく分かりません。言い方を変えてみて頂けませんか？',
      'ごめんなさい、上手く理解できませんでした。',
      '上手く聞き取れませんでした。もう一度お願いします。'
    ]
    pokemon_keywords = ['フシギダネ', 'フシギソウ', 'フシギバナ','ヒトカゲ','リザード','リザードン','ゼニガメ','カメール','カメックス','キャタピー','トランセル','バタフリー','ビードル','コクーン','スピアー','ポッポ','ピジョン','ピジョット','コラッタ','ラッタ','オニスズメ','オニドリル','アーボ','アーボック','ピカチュウ','ライチュウ','サンド','サンドパン','ニドランメス','ニドリーナ','ニドクイン','ニドランオス','ニドリーノ','ニドキング','ピッピ','ピクシー','ロコン','キュウコン','プリン','プクリン','ズバット','ゴルバット','ナゾノクサ','クサイハナ','ラフレシア','パラス','パラセクト','コンパン','モルフォン','ディグダ','ダグトリオ','ニャース','ペルシアン','コダック','ゴルダック','マンキー','オコリザル','ガーディ','ウインディ','ニョロモ','ニョロゾ','ニョロボン','ケーシィ','ユンゲラー','フーディン','ワンリキー','ゴーリキー','カイリキー','マダツボミ','ウツドン','ウツボット','メノクラゲ','ドククラゲ','イシツブテ','ゴローン','ゴローニャ','ポニータ','ギャロップ','ヤドン','ヤドラン','コイル','レアコイル','カモネギ','ドードー','ドードリオ','パウワウ','ジュゴン','ベトベター','ベトベトン','シェルダー','パルシェン','ゴース','ゴースト','ゲンガー','イワーク','スリープ','スリーパー','クラブ','キングラー','ビリリダマ','マルマイン','タマタマ','ナッシー','カラカラ','ガラガラ','サワムラー','エビワラー','ベロリンガ','ドガース','マタドガス','サイホーン','サイドン','ラッキー','モンジャラ','ガルーラ','タッツー','シードラ','トサキント','アズマオウ','ヒトデマン','スターミー','バリヤード','ストライク','ルージュラ','エレブー','ブーバー','カイロス','ケンタロス','コイキング','ギャラドス','ラプラス','メタモン','イーブイ','シャワーズ','サンダース','ブースター','ポリゴン','オムナイト','オムスター','カブト','カブトプス','プテラ','カビゴン','フリーザー','サンダー','ファイヤー','ミニリュウ','ハクリュー','カイリュー','ミュウ', 'ミュウツー']


    duelist_keywords.each do |keyword| #Duelistリアクションのキーワードがuser＿messagesに含まれているかを検証
      if user_message[keyword]
        return Duelist.reaction(user_message)
      end
    end

    greeting_keywords.each do |keyword| #挨拶のリアクションのキーワードがuser＿messageに含まれているかを検証
      if user_message[keyword]
        return ProgramMessage.reaction(user_message)
      end
    end
    
    pokemon_keywords.each do |keyword| #ポケモンのリアクションのキーワードがuser＿messageに含まれているかを検証
      if user_message[keyword]
        return Pokemon.reaction(user_message)
      end
    end

    return error_message_list[rand(0..2)]#いずれのキーワードも含まれていない場合のアクションをランダムでリターンする
  end
  

end