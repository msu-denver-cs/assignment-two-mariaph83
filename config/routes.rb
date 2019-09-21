Rails.application.routes.draw do
  resources :makes
  resources :parts
  resources :cars
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
