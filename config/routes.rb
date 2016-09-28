Rails.application.routes.draw do

 root :to => "welcome#index"

 get '/about', to: 'about#about'

 get '/animals', to: 'animals#index'

 get '/nature', to: 'nature#index'

 get '/weddings', to: 'weddings#index'
 
end
