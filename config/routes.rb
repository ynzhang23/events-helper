Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }

  root 'events#index'

  resources :events, only: %i[index show new create edit update] do
    resources :attendances, only: %i[create destroy]
  end
  resources :users
end
