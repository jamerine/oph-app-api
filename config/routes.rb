require 'api_constraints'

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'products/index'
    end
  end

  namespace :api do
    namespace :v1 do
      get 'products/show'
    end
  end

  namespace :api do
    namespace :v1 do
      get 'products/create'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: { format: :json }, constraints: { subdomain: 'api' }, path: '/' do
    scope module: :v1 do
      resources :products
    end
  end
end
