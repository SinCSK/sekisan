Rails.application.routes.draw do
  devise_for :users
  root to: 'quotations#index'
  resources :quotations, only: [:index, :new, :create, :show, :edit, :destroy]
  resources :items, only: [:new, :create, :destroy]
  resources :clients, only: [:new, :create, :destroy]
end
