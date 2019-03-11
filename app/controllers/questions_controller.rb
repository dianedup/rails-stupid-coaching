class QuestionsController < ApplicationController
  # COACH_CASES = [
  #   {
  #     your_message: 'I am going to work',
  #     coach_answer: 'Great!'
  #   },
  #   {
  #     your_message: 'What time is it?',
  #     coach_answer: 'Silly question, get dressed and go to work!'
  #   },
  #   {
  #     your_message: 'hello',
  #     coach_answer: 'I don\'t care, get dressed and go to work!'
  #   }
  # ]

  def ask
  end

  def answer
    @your_message = params[:question]

    if @your_message == 'I am going to work'
      @coach_answer = 'Great!'
    elsif @your_message.include? '?'
      @coach_answer = 'Silly question, get dressed and go to work!'
    else
      @coach_answer = 'I don\'t care, get dressed and go to work!'
    end
  end
end
