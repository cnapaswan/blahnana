Rails.application.routes.draw do



  #get '/', to: 'pages#home'
  #get '/stories/:id', to: 'stories#show'
  #get '/stories/new', to: 'stories#new'
  #post '/stories', to: 'stories#create'
  #get '/login', to: 'session#new'
  #post '/session', to: 'session#create'
  #get '/users/:id', to: 'user#show'



  resources :banana_transactions
  resources :story_entries
  resources :users
  resources :stories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
