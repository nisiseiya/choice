class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @questions = current_user.questions.page(params[:page]).per(5).order("created_at DESC")
  end
end
