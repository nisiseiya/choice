Rails.application.routes.draw do
 get 'questions'          =>  'questions#index'
 get 'questions/new'      =>  'questions#new'
end
