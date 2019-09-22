Rails.application.routes.draw do
  get 'index/home'
  resources :makes
  resources :parts
  resources :cars
  root to: 'index#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
