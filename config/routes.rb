Rails.application.routes.draw do
  devise_for :users
  root 'users#show'

  resources :users, only: [:show, :index, :edit, :update, :create]
  resources :tweets, only: [:index, :create, :new]
end
