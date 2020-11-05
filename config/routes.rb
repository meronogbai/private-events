Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources 'users', only: %i[new create show]
  get 'signup', to: 'users#new'
  get 'hello_world/index'
end
