class TalksController < ApplicationController
  protect_from_forgery

  def index
  end

  def create
    user_message = params[:user_message]
    program_message = dialog_manager(user_message)
    render json:{program_message: program_message}
  end
end


private
def dialog_manager(user_message)
  duelist_keywords = ['遊戯','武藤遊戯','海馬','マリク','ペガサス']
  duelist_keywords.each do |keyword|
    if user_message[keyword]
      return Duelist.reaction(user_message)
    end
  end
  ProgramMessage.reaction(user_message)
end