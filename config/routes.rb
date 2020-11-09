Rails.application.routes.draw do
  get 'landing/index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  get 'signup', to: 'users#new'
  resources 'users', only: %i[new create show]
  resources 'events', only: %i[index show new create]
  root 'events#index'
end
