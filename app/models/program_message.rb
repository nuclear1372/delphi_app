class ProgramMessage < ActiveHash::Base
  self.data = [
    { id: 1, wakeword: 'こんにちは', reaction: 'こんにちは' },
    { id: 2, wakeword: 'おはよう',   reaction: 'おはよう' },
    { id: 3, wakeword: 'こんばんは', reaction: 'こんばんは' }
  ]

  def self.reaction(user_message)
    self.data.each do |data|
      if data[:wakeword] == user_message 
        return data[:reaction]
      end
    end
    'すみません、よくわかりません'
  end
end