Rails.application.routes.draw do
<<<<<<< HEAD
  root 'pages#wellcome'

=======
  root 'pages#index'
>>>>>>> 540e026c2b26f4d6c8c5ff36592f0779805d67b1
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  get '/auth/:provider/callback', to: 'sessions#create'
  
  get 'about', to: 'pages#about'
  get 'wellcome', to: 'pages#wellcome'
  get 'contact', to: 'pages#contact'
  get 'index' , to: 'pages#index'
  get 'product' , to: 'pages#product'
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
