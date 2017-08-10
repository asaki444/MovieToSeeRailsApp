Rails.application.routes.draw do
  resources :locations
  resources :movies
  devise_for :users
  root to: "home#index"
end
