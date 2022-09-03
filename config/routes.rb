Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists
  resources :lists do
    resources :tasks,  only: [:index, :create, :destroy]
  end
end
