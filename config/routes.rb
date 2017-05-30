Rails.application.routes.draw do
  get '/home', to: 'commons#home'
  get '/help', to: 'commons#help'
  get '/about', to: 'commons#about'
  get '/contact', to: 'commons#contact'

  root 'commons#home'
end
