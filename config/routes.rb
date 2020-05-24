Rails.application.routes.draw do
  get 'lists/new'
  devise_for :users
  root 'homes#top'

  resources :lists, only: [:new, :create]
end
