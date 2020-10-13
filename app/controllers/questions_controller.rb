class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @user_answer = params[:answer]
    if @user_answer == 'I am going to work'
      @answer = 'Great!'
    elsif @user_answer.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
