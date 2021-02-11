Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"
  resources :prototypes
  #get "/users/sign_up", to: "devise/registrations#new"
  #post "/users/sign_up", to: "devise/registrations#new"
 end