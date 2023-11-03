Rails.application.routes.draw do
  devise_for :users
  # root 'splash#index'
  root 'categories#index'

  # resources :transaction_categories
  resources :categories do
    resources :transactions
  end
  resources :transactions
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
