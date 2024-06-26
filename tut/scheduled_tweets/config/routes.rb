Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  # GET /about
  get "about", to: "about#index"
  get "hello", to: "hello#index"
  get "/", to:"main#index"
  get "sign_up", to: "registrations#new"

  post "sign_up", to:"registrations#create"

  # Defines the root path route ("/")
  # root "posts#index"
end
