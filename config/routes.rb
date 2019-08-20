Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create, :show]
  resources :arcades, only: [:new, :create, :edit, :update] do
    resources :reservations
  end
  root to: 'arcades#index'
  resources :reservations, only: [:destroy]
  resources :arcades, only: [:index, :show, :destroy]
end
