Rails.application.routes.draw do

 root to: 'welcome#index'

 get '/about', to: 'about#about'

 get '/animals', to: 'photos#animals'

 get '/nature', to: 'photos#nature'

 get '/weddings', to: 'photos#weddings'

 get '/contact', to: 'contact#index'

 get '/admin', to: 'photos#index'

 resources :photos, only: [:new, :create, :index, :destroy]

end
