Rails.application.routes.draw do
  devise_for :users
  authenticated :user do
    root 'categories#index', as: :authenticated_root
  end
  root 'splash#index'

  resources :categories do
    resources :transactions
  end
  resources :transactions
  # resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
