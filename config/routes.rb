Sim::Application.routes.draw do
  root  'static_pages#home'
  
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  match '/project_1', to: 'static_pages#project_1', via: 'get'
  
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :posts,    only: [:create, :destroy]
  resources :email
  post 'email/deliver'
  
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
end
