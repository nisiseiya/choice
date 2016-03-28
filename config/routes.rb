Rails.application.routes.draw do
 get 'questions'          =>  'questions#index'
 get 'questions/new'      =>  'questions#new'
 get 'tweets'             =>  'questions#create'
end
