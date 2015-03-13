Rails.application.routes.draw do
  root :to => 'pages#landing'

  resources :users
  resources :reservations
  resources :flights
  resources :airplanes

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
