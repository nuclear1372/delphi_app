Rails.application.routes.draw do
  root to: 'talks#index'
  resources :talks, only: [:index, :create]
end
