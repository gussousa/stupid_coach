class QuestionsController < ApplicationController
  def ask
  end
  
  def answer
    @question = params[:question] unless params[:question].nil?
    @answer =
      if @question.downcase.include?('i am going to work') || @question.downcase.include?('i will work now')
        'Great!'
      elsif @question.include?('?')
        'Silly question, get dressed and go to work!'
      elsif @question.length == 0
        @question = "..."
        'Yeah! You don\'t have to talk, you have to work! Now work!!'
      else
        'I don\'t care, get dressed and go to work!'
      end
  end
end
