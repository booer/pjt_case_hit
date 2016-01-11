Rails.application.routes.draw do
  root 'pages#index'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  get '/auth/:provider/callback', to: 'sessions#create'
  
  get 'about', to: 'pages#about'
  get 'wellcome', to: 'pages#wellcome'
  get 'contact', to: 'pages#contact'
  get 'index' , to: 'pages#index'
  get 'history' , to: 'pages#history'
  resources :posts
  resources :products

  namespace :admin do
    root 'posts#index'
    get 'contact', to: 'pages#contact'
    get 'login', to: 'pages#login'

    resources :about_images
    resources :posts
    resources :services
    resources :pages
    resources :sites
    resources :products
  end
end
