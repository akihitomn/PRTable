Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  root to: 'companies#index'
  resources :users, except: [:show]
  resources :companies do
    resources :stories do
      # collection do
      #   get 'search'
      # end
      resources :messages, only: [:create, :destroy]
      resources :likes, only: [:create, :destroy]
    end
  end
end
