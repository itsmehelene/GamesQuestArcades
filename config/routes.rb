Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
    resources :arcades
  end
  resources :users do
    resources :reservations
  end

  resources :reservations, only: [:destroy]
  resources :arcades, only: [:index, :show]
end
