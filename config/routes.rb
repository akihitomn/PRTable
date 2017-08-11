Rails.application.routes.draw do
  devise_for :users
  root to: 'companies#index'
  resources :users
  resources :companies do
    resources :stories
  end
end
