Rails.application.routes.draw do
  root 'pages#home'
  get '/accolades', to: 'pages#accolades'
  resources :messages, only: [:new, :create]
  get '/tip_me', to: 'pages#tip_me'
  get '*path', to: redirect('/')
end
