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
  post '/stories_entries', to: 'stories_entries#create'
  post '/give_banana', to: 'banana_transactions#create'
  post 'stories_entries', to: 'stories_entries#create'

  post '/api/create', to: 'story_entries#api_create'
  get '/api/all', to: 'story_entries#api_all'



  resources :charges
  resources :banana_transactions
  resources :story_entries
  resources :users
  resources :stories
end
