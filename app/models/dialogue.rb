class Dialogue
  include ActiveModel::Model

  def self.rooting(user_message)
    duelist_keywords = ['遊戯','武藤遊戯','海馬','マリク','ペガサス'] #Duelistリアクションの起動キーワード
    greeting_keywords = ['おはよう', 'こんにちは', 'こんばんは','お疲れ様', '自己紹介'] #挨拶のリアクションの起動キーワード
    error_message_list = [
      'すみません、よく分かりません。言い方を変えてみて頂けませんか？',
      'ごめんなさい、上手く理解できませんでした。',
      '上手く聞き取れませんでした。もう一度お願いします。'
    ]

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
    
    return error_message_list[rand(0..2)]#いずれのキーワードも含まれていない場合のアクションをランダムでリターンする
  end
  
  
end