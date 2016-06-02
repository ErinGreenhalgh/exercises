Rails.application.routes.draw do
  root to: 'sessions#new'
  resources :tools
  resources :users, only: [:show]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

end
