Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :gossips
  root 'gossips#index'
end
