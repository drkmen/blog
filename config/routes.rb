Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root 'application#index'

  resources :posts, only: [:index, :show]
  resources :comments, only: [:create]
  resources :authors

end
