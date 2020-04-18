Rails.application.routes.draw do
  namespace :instructor do
    root 'top#index'
    get '/signup',to:'ir_users#new'
  end

  namespace :organizer do
    root 'top#index'
  end

  namespace :customer do
    root 'top#index'
  end

end
