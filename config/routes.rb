Rails.application.routes.draw do
  resources :locations
  resources :movies
  devise_for :users
  root to: "movies#index"
  resources :users, only: [:show, :index] do
    resources :movies
  end
end
