Rails.application.routes.draw do
  resources :products
  resources :costs

  #homepage
  get '/', to: 'pages#show'
  #user_session
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  #user_database
  get '/signup', to: 'users#new'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show'
  #story_database
  post '/stories', to: 'stories#create'
  get '/api/stories', to: 'stories#api_show'
  delete '/delete/story', to: 'stories#destroy'
  #stories_entries_database
  post '/api/stories_entries', to: 'story_entries#api_create_story_entry'

  # post '/api/create', to: 'story_entries#api_create'
  # get '/api/all', to: 'story_entries#api_all'
  #banana_transactions_database
  post '/give_banana', to: 'banana_transactions#give_banana'
  #sellbanana_landing_page
  get '/buynana', to: 'buynanas#show'
  #error
  get '/oops', to: 'pages#oops'

  resources :charges
  resources :banana_transactions
  resources :story_entries
  resources :users
  resources :stories
end
