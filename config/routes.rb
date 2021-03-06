Rails.application.routes.draw do
  root to: 'arcades#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create]
  get :my_profil, to: 'users#show'
  resources :arcades do
    resources :reservations, only: [:new, :create]
    resources :reviews, only: [:create]
  end
  resources :reservations, only: [:index, :show, :destroy]
end
