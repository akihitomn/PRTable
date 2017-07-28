Rails.application.routes.draw do
  root 'stories#index'
  resources :stories, only: [:index, :new, :create] do
  end
  # resources :companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
