Rails.application.routes.draw do
  get 'sessions/new'

  get '/home', to: 'commons#home'
  get '/help', to: 'commons#help'
  get '/about', to: 'commons#about'
  get '/contact', to: 'commons#contact'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/users', to: 'users#index'

  root 'commons#home'

  resources :users
end
