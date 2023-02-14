Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.htm
  # Defines the root path route ("/")
  get "download_pdf", to: 'banks#download_pdf'
   get "clients", to: 'clients#index'

  root "articles#index"

  resources :articles do
    resources :comments 
  end
  resources :orders   do
    resources :customers
   end
  resources :banks 
end