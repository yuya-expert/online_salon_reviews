Rails.application.routes.draw do
  resources :salons
  resources :users
  root "salons#index"
end
