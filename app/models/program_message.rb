class ProgramMessage < ActiveHash::Base
  self.data = [
    { id: 1, wakeword: 'こんにちは', reaction: 'こんにちは' },
    { id: 2, wakeword: 'おはよう',   reaction: 'おはようございます' },
    { id: 3, wakeword: 'こんばんは', reaction: 'こんばんは' },
    { id: 4, wakeword: 'お疲れ様',   reaction: 'お疲れ様です' },
    { id: 5, wakeword: '自己紹介して',   reaction: '私の名前はDelphi' },
    { id: 6, wakeword: '疲れた',     reaction: 'お疲れ様です。少し休憩されては如何ですか？ホットアイマスクがおすすめですよ。' },
    { id: 7, wakeword: '行ってきます', reaction: 'いってらっしゃいませ。お帰りをお待ちしております。' }
  ]

  def self.reaction(user_message)
    self.data.each do |data|
      if data[:wakeword] == user_message[data[:wakeword]]
        reaction = []
        reaction << data[:reaction]
        return reaction
      end
    end
  end
end