Rails.application.routes.draw do
  get 'users/text'
  get 'persons/simple'
  #get 'simple/text'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "articles#index"
    resources :articles do
       resources :comments 
      end 
    end
