Rails.application.routes.draw do
  root 'pages#wellcome'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  get '/auth/:provider/callback', to: 'sessions#create'
  
  get 'about', to: 'pages#about'
  get 'wellcome', to: 'pages#wellcome'
  get 'contact', to: 'pages#contact'
  resources :posts
  resources :products

  namespace :admin do
    root 'posts#index'
    get 'contact', to: 'pages#contact'
    get 'ga', to: 'pages#ga'
    get 'login', to: 'pages#login'

    resources :category 
    resources :posts
    resources :pages
    resources :sites
    resources :products
  end
end
