Rails.application.routes.draw do
  get 'users/edit'
  get 'lists/new'
  devise_for :users
  root 'homes#top'

  resources :users, only: [:edit, :update]
  resources :lists, only: [:new, :create, :edit, :update, :destroy]
end
