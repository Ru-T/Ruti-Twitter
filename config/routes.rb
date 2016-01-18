Rails.application.routes.draw do
  devise_for :users
  root 'users#show'

  resources :users, only: [:show, :index, :edit, :update, :create] do
    member do
      get :following
    end
  end
  resources :tweets, only: [:create, :new]
  resources :follows, only: [:index, :create, :destroy]
end
