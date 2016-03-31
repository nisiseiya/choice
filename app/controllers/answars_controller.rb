class AnswarsController < ApplicationController
  def create
    Answar.create(text: answar_params[:text], question_id: answar_params[:question_id], user_id: current_user.id)
  end

  private
  def answar_params
    params.permit(:text, :question_id)
  end
end
