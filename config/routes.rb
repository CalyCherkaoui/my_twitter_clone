Rails.application.routes.draw do
  devise_for :users
  resources :gossips
  root 'gossips#index'
end
