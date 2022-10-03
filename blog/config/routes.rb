Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts
  root 'posts#index'
  # get '/posts', to: 'posts#index'
  # post '/posts', to: 'posts#create'

end


#root 'posts#index' // it will redirect to root path

#instead of resource routes define separate routes
=begin  
get '/posts', to: 'posts#index'
post '/posts', to: 'posts#create'
=end