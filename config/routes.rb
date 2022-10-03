# frozen_string_literal: true

Rails.application.routes.draw do
  resources :todos, only: [:index, :create], constraints: { format: 'json' }

  root to: 'home#index'
  match '/*path', to: 'home#index', via: :all
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
end
