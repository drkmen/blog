Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root 'application#index'

  resources :posts, only: [:index, :show]
  resources :comments, only: [:create]
  resources :authors, only: [:show, :create]
  resources :tags, only: [:index, :show]
  resources :projects, only: [:index]
  resources :skills, only: [:index]
  resources :experiences, only: [:index]

  get '/auth/:provider/callback', to: 'sessions#create'
  get '/reload_sitemap', to: 'application#reload_sitemap'

end
