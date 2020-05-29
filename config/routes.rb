Rails.application.routes.draw do
  
  root 'static_pages#home'
  get '/help', to: 'static_pages#help' #This creates help_path /help, and help_url www.app.com/help
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'

  #Adds all routes corresponding to RESTful
  resources :users
  #HTTP       URL             Action              Named route           Purpose
  #GET        /users          index               users_path            List all users
  #GET        /users/1        show                users_path(user)      Page to show user (can also be @user)  
  #GET        /users/new      new                 new_user_path         Page to make a new user
  #POST       /users          create              users_path            Create a new user
  #GET        /users/1/edit   edit                edit_user_path(user)  Page to edit user with id 1
  #PATCH      /users/1        update              user_path(user)       Update user
  #DELETE     /users/1        destroy             user_path(user)       Delete user

  #Routes for login 
  get '/login',   to: 'sessions#new'
  post '/login',    to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
