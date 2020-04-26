Rails.application.routes.draw do
  namespace :instructor do
    root 'top#index'
    get '/signup',to:'ir_users#new'
    post '/signup', to:'ir_users#create'
    resources :ir_users
  end

  namespace :organizer do
    root 'top#index'
    get '/signup', to:'org_users#new'
    post '/signup', to:'org_users#create'
    resources :org_users
  end

  namespace :customer do
    root 'top#index'
    get '/signup',to:'users#new'
    post '/signup', to:'users#create'
    resources :users
  end

end
