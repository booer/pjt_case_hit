Rails.application.routes.draw do
  root 'admin/pages#login'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  get '/auth/:provider/callback', to: 'sessions#create'
  
  get 'about', to: 'pages#about'
  get 'wellcome', to: 'pages#wellcome'
  get 'contact', to: 'pages#contact'
  resources :posts
  resources :products

  namespace :admin do
    root 'pages#about'
    get 'about', to: 'pages#about'
    get 'wellcome', to: 'pages#wellcome'
    get 'contact', to: 'pages#contact'
    get 'settings', to: 'pages#settings'
    get 'ga', to: 'pages#ga'
    get 'keyword', to: 'pages#keyword'
    get 'login', to: 'pages#login'
    resources :category 
    resources :posts
    resources :products
  end
end
