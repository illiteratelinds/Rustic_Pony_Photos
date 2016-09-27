Rails.application.routes.draw do

 root :to => "welcome#index"

 resources :about, only: [:index]

 # get '/about', to: 'about#index'

end
