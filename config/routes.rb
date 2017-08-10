Rails.application.routes.draw do
  resources :locations
  resources :movies
  devise_for :users
  root to: "application#home"
  resources :users, only: [:show, :index] do
    resources :movies
  end
end
