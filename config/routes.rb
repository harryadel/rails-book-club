Rails.application.routes.draw do
  root 'posts#index'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :sessions, only: %i[new create destroy]
  resources :users, only: %i[new create destroy]
  resources :posts do
    resources :comments
  end
end
