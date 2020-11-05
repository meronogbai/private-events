Rails.application.routes.draw do
  resources 'users', only: %i[new create show]
  get 'signup', to: 'users#new'
  get 'hello_world/index'
end
