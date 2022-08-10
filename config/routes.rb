# frozen_string_literal: true

Rails.application.routes.draw do
  get 'trending_products_form', to: 'trending_products#index'
  get '/cart_page', to: 'cart_products#cart'
  get '/cart_page/:product_id', to: 'list_products#cart_items'
  get '/payments', to: 'payments#user_payment'
  get '/address', to: 'user_details#new'
  get '/paintings', to: 'categories#wallpainting'
  get '/statues', to: 'categories#statue'
  get '/lights', to: 'categories#light'
  get '/clocks', to: 'categories#wallclock'
  get '/antiques', to: 'categories#antique'
  get '/candleholders', to: 'categories#candleholder'
  get '/shelfhangings', to: 'categories#shelfhanging'

  get 'blog_post/index'
  get 'products_page', to: 'list_products#shop'
  # get  '/nav',to: 'decoroms#render_list'
  get '/home', to: 'decoroms#index'
  get '/login', to: 'sessions#login'
  get '/signup', to: 'users#signup'
  post 'add_products_path', to: 'add_products#create'
  resources :add_products

  post '/create_new_user', to: 'users#create'
  post '/create_session', to: 'sessions#create'
  # post  '/products', to: 'add_products#create'
  post '/add_trending_products', to: 'trending_products#create'
  resources :user_details
end
