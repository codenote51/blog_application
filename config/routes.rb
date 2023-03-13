Rails.application.routes.draw do
  #get 'users/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.htm
  # Defines the root path route ("/")
  get "/tests", to: "orders#tests"
  get "/tables-for-n-upto-m/:n/:m", to: "articles#tables"
  get "/db_design", to: "articles#db_design"
  get "/tables2-n-upto-m", to: "articles#tables2" 
  get "/signup", to: "users#new", as: "signup"  
  get "/users/:id" => "users#show"
  post "/users", to: "users#create", as: "users"
  get "/login", to: "sessions#new", as: "login"
  post "/create", to: "sessions#create", as: "create"
  delete "/logout", to: "sessions#destroy", as: "logout"
 
  root "articles#index"
  resources :articles do
    resources :comments 
  end
  resources :orders   do
    resources :customers
  end
  resources :banks
  resources :users
end
