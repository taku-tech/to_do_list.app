Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'

  resources :users, only: [:edit, :update]
  
  resources :lists, only: [:new, :create, :edit, :update, :destroy] do
  	resources :cards, only: [:new, :create]
  end
  
end
