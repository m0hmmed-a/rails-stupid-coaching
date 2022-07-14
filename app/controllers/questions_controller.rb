class QuestionsController < ApplicationController
  def about
  end

  def ask
  end

  def answer
    @question = params[:question]

    if params[:question]&.downcase == "i am going to work right now!"
      @answer = "Well done!"
    elsif params[:question]&.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
    @answer
  end
end
