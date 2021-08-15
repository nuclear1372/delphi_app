class ProgramMessage < ActiveHash::Base
  self.data = [
    { id: 1, wakeword: 'こんにちは', reaction: 'こんにちは' },
    { id: 2, wakeword: 'おはよう',   reaction: 'おはようございます' },
    { id: 3, wakeword: 'こんばんは', reaction: 'こんばんは' },
    { id: 4, wakeword: 'お疲れ様',   reaction: 'お疲れ様です' },
    { id: 5, wakeword: '自己紹介',   reaction: '私の名前はDelphi' }
  ]

  def self.reaction(user_message)
    self.data.each do |data|
      if data[:wakeword] == user_message[data[:wakeword]]
        return data[:reaction]
      end
    end
  end
end