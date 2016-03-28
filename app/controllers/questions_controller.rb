class QuestionsController < ApplicationController

  def index
    @questions = Question.all.order("created_at DESC").page(params[:page]).per(5)
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
