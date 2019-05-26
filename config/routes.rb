Rails.application.routes.draw do
  root 'pages#home'
  get '/accolades', to: 'pages#accolades'
  get '/contact', to: 'pages#contact'
  get 'tip_me', to: 'pages#tip_me'
  get "/test", to: 'pages#test'
end
