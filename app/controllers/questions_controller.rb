class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def new
  end

  def create
    Question.create(question_params)
  end

  private
  def question_params
    params.permit(:text)
  end
end
