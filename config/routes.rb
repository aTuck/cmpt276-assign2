Rails.application.routes.draw do
  # get 'students/index'
  root :to => 'students#index'
  resources :students

  get '/new_student' => 'students#new'
  get '/all' => 'students#index', as: 'all_tweets'
end
