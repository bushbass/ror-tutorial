Rails.application.routes.draw do
  devise_for :users
  resources :frozen_items
  # get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "home#index"

  get 'home/about'
end
