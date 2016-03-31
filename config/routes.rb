Rails.application.routes.draw do
  devise_for :users
  root 'questions#index'
  resources  :questions
  resources  :users, only: [:show]
end
