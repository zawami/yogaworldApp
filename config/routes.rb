Rails.application.routes.draw do
  namespace :organizer do
    get 'org_users/new'
  end
  namespace :instructor do
    root 'top#index'
    get '/signup',to:'ir_users#new'
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
