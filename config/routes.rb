Rails.application.routes.draw do
  root to: 'lists#index'
  resources :tasks
end
