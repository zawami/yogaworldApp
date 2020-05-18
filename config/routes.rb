Rails.application.routes.draw do

  namespace :instructor do
    root 'top#index'
    get '/signup',to:'ir_users#new'
    post '/signup', to:'ir_users#create'
    get '/login', to:'sessions#new'
    post '/login', to:'sessions#create'
    delete '/logout', to:'sessions#destroy'
    post '/applys', to: 'applys#create'
    resources :ir_users
    resources :applys
  end

  namespace :organizer do
    root 'top#index'
    get '/signup', to:'org_users#new'
    post '/signup', to:'org_users#create'
    get '/login', to: 'sessions#new'
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'
    get '/event', to: 'events#new'
    post '/event', to: 'events#create'
    get '/event/:id', to: 'events#show'
    get '/confirm/:id', to: 'events#confirm',as: 'confirm'
    resources :org_users
    resources :events
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
