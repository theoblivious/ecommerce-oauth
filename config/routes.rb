Rails.application.routes.draw do
 

 resources :users, only: [:new, :create]

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'pages#index'
   get 'pages/index'
  resources :products, only: [:show]

  # non-restful routes 
  get "/add-item/:id", to: "purchase#new", as: :add_to_cart

  get "/log-in", to: "sessions#new"
  #  maybe this is how you do simultaneous calls by creating two to the same path.
  post "/log-in", to: "sessions#create"
  get "/log-out", to: "sessions#destroy", as: :log_out
end