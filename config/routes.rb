Rails.application.routes.draw do
  devise_for :users
  root to: 'stories#index'
  resources :users
  resources :stories, only: [:index, :new, :create]
  resources :companies
end
