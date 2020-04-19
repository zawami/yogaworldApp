Rails.application.routes.draw do
  namespace :instructor do
    root 'top#index'
    get '/signup',to:'ir_users#new'
    resources :ir_users
  end

  namespace :organizer do
    root 'top#index'
    get '/signup',to:'org_users#new'
    resources :org_users
  end

  namespace :customer do
    root 'top#index'
    get '/signup',to:'users#new'
    resources :users
  end

end
