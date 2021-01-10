Rails.application.routes.draw do
  resources :comments
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :articles
  root 'pages#home'
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
 
end
