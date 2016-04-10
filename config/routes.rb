Rails.application.routes.draw do
  root :to => "home#index"
  get 'home/index'
  
  # get 'user_sessions/new'
  # get 'user_sessions/create'
  # get 'user_sessions/destroy'
  resources :categories
  resources :posts
  resources :user_sessions
  resources :users



  get 'login' => 'user_sessions#new', :as => :login
  get 'logout' => 'user_sessions#destroy', :as => :logout

end
