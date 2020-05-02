Rails.application.routes.draw do
  namespace :instructor do
    root 'top#index'
    get '/signup',to:'ir_users#new'
    post '/signup', to:'ir_users#create'
    get '/login', to:'sessions#new'
    post '/login', to:'sessions#create'
    delete '/logout', to:'sessions#destroy'
    resources :ir_users
  end

  namespace :organizer do
    root 'top#index'
    get '/signup', to:'org_users#new'
    post '/signup', to:'org_users#create'
    get '/login', to: 'sessions#new'
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'
    resources :org_users
  end

  namespace :customer do
    root 'top#index'
    get '/signup',to:'users#new'
    post '/signup', to:'users#create'
    get '/login', to:'sessions#new'
    post '/login', to:'sessions#create'
    delete '/logout', to:'sessions#destroy'
    resources :users
  end

end
