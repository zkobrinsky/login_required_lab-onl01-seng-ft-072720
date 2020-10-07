Rails.application.routes.draw do
  get '/', to: 'sessions#new'
  get '/sessions/new', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  get '/secrets/show', to: 'secrets#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
