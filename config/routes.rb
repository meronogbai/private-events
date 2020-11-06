Rails.application.routes.draw do
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  resources 'users', only: %i[new create show]
  get 'signup', to: 'users#new'
  get 'hello_world/index'
end
