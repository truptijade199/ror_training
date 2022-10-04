Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users

  namespace :api do
    namespace :v1 do
      resources :users
    end

    namespace :v2 do
      resources :users
    end

    namespace :v3 do
      resources :users
    end

    namespace :v4 do
      resources :users
    end

  end

  api_version(module: "V1", header: {
    name: "Accept", value: "application/rails-api.in:version=1"
  }) do
    resources :users
  end

  api_version(module: "V2", header: {
    name: "Accept", value: "application/rails-api.in:version=2"
  }) do
    resources :users
  end

end
