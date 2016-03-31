Rails.application.routes.draw do
  devise_for :users
  root 'questions#index'
  resources  :questions do
    resources :answars, only: [:create]
  end
  resources  :users, only: [:show]
end
