Rails.application.routes.draw do
  root :to => 'pages#index'

  resources :users

  resources :reservations

  resources :flights

  resources :airplanes


end
