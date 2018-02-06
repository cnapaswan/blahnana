Rails.application.routes.draw do

  #mia route start
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get '/signup', to: 'users#new'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show'
  get '/', to: 'pages#show'
  get '/stories/new', to: 'stories#new'
  post '/stories', to: 'stories#create'
  get '/buynana', to: 'buynanas#show'

  #mia route end
  #wally
  #get '/stories/:id', to: 'stories#show'




  #get '/', to: 'pages#home'


  #
  #get '/login', to: 'session#new'
  #post '/session', to: 'session#create'




  resources :banana_transactions
  resources :story_entries
  resources :users
  resources :stories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
