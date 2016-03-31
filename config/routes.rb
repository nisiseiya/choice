Rails.application.routes.draw do
  devise_for :users
  root 'questions#index'
  get    'questions'          =>  'questions#index'
  get    'questions/new'      =>  'questions#new'
  post   'questions'          =>  'questions#create'
  get    'users/:id'          =>  'users#show'
  delete 'questions/:id'      =>  'questions#destroy'
  get    'questions/:id/edit' =>  'questions#edit'
  patch  'questions/:id'      =>  'questions#update'
  get    'questions/:id'      =>  'questions#show'
end
