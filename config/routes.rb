Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }

  root 'events#index'

  resources :events, only: [:index, :show, :new, :create]

  get "/users/:id", to: "users#show"
end
