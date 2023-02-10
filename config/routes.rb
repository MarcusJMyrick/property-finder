Rails.application.routes.draw do
  get "/dashboard" => 'dashboard#index', as: :dashboard
  get 'dashboard/properties', to: 'dashboard#properties'
  get 'dashboard/reports', to: 'dashboard#reports'
  
  resources :properts
  devise_for :accounts
  root to: 'public#main'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
