Rails.application.routes.draw do
  #get 'sessions/new'

  #get 'users/new'

  #get 'startup/index'

  resources :turmas
  resources :users

  get '/sistema' => 'startup#index'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/turmas' => 'turmas#index'

  #root 'startup#index'
  #root 'sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
