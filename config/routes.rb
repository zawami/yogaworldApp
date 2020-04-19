Rails.application.routes.draw do
  namespace :instructor do
    root 'top#index'
    get '/signup',to:'ir_users#new'
    resources :ir_users
  end

  namespace :organizer do
    root 'top#index'
    get '/signup',to:'org_users#new'
  end

  namespace :customer do
    root 'top#index'
    get '/signup',to:'users#new'
  end

end
