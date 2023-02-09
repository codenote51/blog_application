Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.htm
  # Defines the root path route ("/")

  root "articles#index"

  resources :articles do
    resources :comments 
end
  resources :orders   do
    resources :customers
   end


    resources :banks 
end