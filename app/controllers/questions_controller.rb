class QuestionsController < ApplicationController
  def ask
  end

  # @question = gets.chomp
  def answer
    @question = params[:question]
    if @question.blank?
      @answer = "I can't hear you!"
    elsif @question.ends_with?("?")
      @answer = "Silly question, get dressed and go to work! Chop Chop!"
    elsif @question =~ /i am going to work/i
      @answer = "Finally, I thought this day would never come..."
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
