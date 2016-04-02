class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @questions = user.questions.page(params[:page]).per(5).order("created_at DESC")
    @answars = user.answars.page(params[:page]).per(5).order("created_at DESC")
    @q_count = user.questions.count
    @a_count = user.answars.count
  end
end
