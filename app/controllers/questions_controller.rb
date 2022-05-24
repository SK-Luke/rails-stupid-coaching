class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @ans = ''
    if params[:question].include? '?'
      @ans = 'Silly question, get dressed and go to work!'
    elsif params[:question] == 'I am going to work right now!'
      @ans = 'Great!'
    else
      @ans = "I don't care, get dressed and go to work!"
    end
  end
end
