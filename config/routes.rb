Rails.application.routes.draw do
  resources :locations
  resources :movies
  devise_for :users
  root to: "application#home"
  resources :movies, only: [:show, :index] do
    resources :locations
  end
end
