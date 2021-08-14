class TalksController < ApplicationController
  protect_from_forgery

  def index
  end

  def create
    user_message = params[:user_message]
    program_message = ProgramMessage.reaction(user_message)
    render json:{program_message: program_message}
  end
end
