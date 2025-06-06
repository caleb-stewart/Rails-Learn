Rails.application.routes.draw do
  get "golf_clubs/index"
  get "products/index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"

  resources :products # This will create RESTful routes for the products resource
  # For example:
  # get 'products', to: 'products#index'
  # post 'products', to: 'products#create'
  # get 'products/:id', to: 'products#show'
  # patch 'products/:id', to: 'products#update'
  # delete 'products/:id', to: 'products#destroy'


  root "golf_clubs#index" #The root of this application is now the index action of the ProductsController

  resources :golf_clubs
end
