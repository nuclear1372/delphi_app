class Duelist < ActiveHash::Base
  self.data = [
    { id: 1, name: '武藤遊戯', wakeword: 'エースカード', favorite_card: 'ブラックマジシャン' , reaction: 'もっと腕にシルバー巻くとかさ'},
    { id: 2, name: '海馬', wakeword: 'エースカード', favorite_card: 'ブルーアイズホワイトドラゴン' , reaction: 'ふつくしい'},
    { id: 3, name: 'マリク', wakeword: 'エースカード', favorite_card: 'ラーの翼神龍' , reaction: '気持ちいいぜ'},
    { id: 4, name: 'ペガサス', wakeword: 'エースカード', favorite_card: 'トゥーンワールド' , reaction: 'トムの勝ちデース'}
  ]

  def self.reaction(user_message)
    self.data.each do |data|
      if data[:name] == user_message[data[:name]] && data[:wakeword] == user_message[data[:wakeword]]
        return data[:name] + 'のエースカードは' + data[:favorite_card] + 'です。' + '名台詞は' + data[:reaction]
      end
    end
    'すみません、よくわかりません'
  end
end