Rails.application.routes.draw do
  root 'questions#'
  get    'questions'          =>  'questions#index'
  get    'questions/new'      =>  'questions#new'
  post   'questions'          =>  'questions#create'
end
