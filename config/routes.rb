Rails.application.routes.draw do
  get 'customers/login'
  # get 'users/signup'
  get '/homepage', to: 'decoroms#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/signup', to: 'users#signup'
  post '/users',to: 'users#create'
 
end
