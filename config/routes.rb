Rails.application.routes.draw do
  devise_for :users
  root 'users#show'

  resources :users, except: [:destroy] do
    collection do
      get :following
    end
  end
  resources :tweets, only: [:create, :new]
  resources :follows, only: [:create, :destroy]
end
