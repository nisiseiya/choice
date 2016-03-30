class QuestionsController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @questions = Question.all.order("created_at DESC").page(params[:page]).per(5)
  end

  def new
  end

  def create
    Question.create(text: question_params[:text], user_id: current_user.id)
  end

  private
  def question_params
    params.permit(:text)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
