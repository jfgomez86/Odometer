Odometer::Application.routes.draw do
  devise_for :users, controllers: {registrations: "users/registrations"}

  resources :profiles, only: [:show], controller: "users/profiles"

  root to: "pages#index"
end
