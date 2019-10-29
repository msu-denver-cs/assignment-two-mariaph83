Rails.application.routes.draw do
  
  devise_for :users
  get 'index/home'
  resources :makes do
    collection do
      get 'search'
    end
  end
  resources :cars do
    collection do
      get 'search'
    end
  end
  resources :parts do
    collection do
      get 'search'
    end
  end

  root to: 'index#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
