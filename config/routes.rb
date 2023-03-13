Rails.application.routes.draw do
  #get 'users/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.htm
  # Defines the root path route ("/")
  get "/tests", to: "orders#tests"
  get "/tables-for-n-upto-m/:n/:m", to: "articles#tables"
  get "/db_design", to: "articles#db_design"
  get "/tables2-n-upto-m", to: "articles#tables2" 
  get "/signup" => "users#new"
  post "/users" => "users#create"
  get "/login", to: "sessions#new", as: "login"
  post "/create"   => "sessions#create"
  delete "/logout"  => "sessions#destroy"
 
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
