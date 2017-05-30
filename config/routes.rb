Rails.application.routes.draw do
  get '/home', to: 'commons#home'
  get '/help', to: 'commons#help'
  get '/about', to: 'commons#about'
  get '/contact', to: 'commons#contact'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  root 'commons#home'

  resources :users
end
