Rails.application.routes.draw do
  resources :comments
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :articles
  root 'pages#home'
 
end
