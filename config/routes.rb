Rails.application.routes.draw do
  devise_for :users
  root to: 'companies#index'
  resources :users, except: [:show]
  resources :companies do
    resources :stories do
      # collection do
      #   get 'search'
      # end
      resources :likes, only: [:create, :destroy]
    end
  end
end
