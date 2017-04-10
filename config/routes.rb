Rails.application.routes.draw do
  resources :cheeps
  resources :users
  root 'users#index'
  
end
