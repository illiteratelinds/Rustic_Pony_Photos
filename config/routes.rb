Rails.application.routes.draw do

 root :to => "welcome#index"

 get '/about', to: 'about#about'

 get '/animals', to: 'animals#index'

end
