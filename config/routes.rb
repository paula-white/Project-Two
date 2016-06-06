Rails.application.routes.draw do


  get '/home' => 'pages#home', :as => 'home'

resources :users, :sports, :scoreboards, :messages, :leagues

  get  '/login' => 'session#new', :as => 'login'
  post '/login' => 'session#create'
  delete '/logout' => 'session#destroy', :as => 'logout'
  get '/invite/:league_id/:sport_id' => 'users#invite'
  post '/invite/:league_id/:sport_id' => 'users#do_invite'
  get '/leagues/new/:sport_id' => 'leagues#new'
  get '/leagues/:league_id/messages' => 'messages#index', :as => 'league_messages'
  post '/leagues/:league_id/messages' => 'messages#create', :as => 'create_messages'
  get '/leagues/:league_id/scoreboard' => 'scoreboards#show', :as => 'league_scoreboard'
  post '/leagues/:league_id/scoreboard' => 'scoreboards#update'
  delete '/leagues/:id' => 'leagues#destroy'
  # get '/leagues/index' => 'leagues#index'

end
