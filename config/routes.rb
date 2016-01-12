Rails.application.routes.draw do
  devise_for :users
  root 'users#index'

  resources :users, only: [:show, :index, :edit, :update, :create]
  resources :tweets, only: [:show, :index, :create]
end
