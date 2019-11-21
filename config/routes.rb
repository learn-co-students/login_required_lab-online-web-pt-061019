Rails.application.routes.draw do
  root 'application#hello'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/secret' => 'secrets#show'
  post '/logout' => 'sessions#destroy'
end
