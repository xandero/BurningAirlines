Rails.application.routes.draw do
  root :to => 'pages#landing'

  resources :users
  resources :airplanes
  resources :flights do
    resources :reservations
    get '/airplane' => 'airplanes#show_json'

  end

  post '/search' => 'flights#search'
  get '/search' => 'flights#search_form'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
