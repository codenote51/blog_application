Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.htm
  # Defines the root path route ("/")
  get "/tests", to: "orders#tests"
  get "/tables-for-n-upto-m/:n/:m", to: "articles#tables"
  get "/tables-n-upto-m", to: "articles#tables2"
  #get 'banks', action: :new, controller: 'banks'


  root "articles#index"

    resources :articles do
      resources :comments 
    end
    resources :orders   do
      resources :customers
    end
    scope shallow_prefix: "sekret" do
      resources :banks
    end
end