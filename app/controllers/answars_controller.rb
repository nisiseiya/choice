class AnswarsController < ApplicationController
  def create
    Answar.create(text: params[:text], question_id: params[:question_id], user_id: current_user.id)
  end
end
