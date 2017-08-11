Rails.application.routes.draw do
  resources :locations
  resources :movies
  root to: "application#home"
  resources :movies, only: [:show, :index] do
    resources :locations
  end
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" } 
end
