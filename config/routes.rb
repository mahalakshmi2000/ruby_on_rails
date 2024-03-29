# frozen_string_literal: true

Rails.application.routes.draw do
  resources :user_addresses
  get '/logout', to: 'sessions#destroy', as: :destroy_session
  get '/search', to: 'list_products#search'
  get 'trending_products_form', to: 'trending_products#index'
  get '/cart_page', to: 'cart_products#cart'
  get '/cart_page/:product_id', to: 'list_products#cart_items'
  get 'carts/:cart_id', to: 'cart_products#destroy'

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
  root 'decoroms#index'
  get '/home', to: 'decoroms#index'
  get '/profile', to: 'decoroms#user_profile'
  get 'seller_page', to: 'decoroms#seller_page'
  get '/login', to: 'sessions#login'
  # get '/signup', to: 'users#signup'
  post 'add_products_path', to: 'add_products#create'
  resources :add_products

  post '/create_new_user', to: 'users#create'
  resources :users
  post '/create_session', to: 'sessions#create'
  # post  '/products', to: 'add_products#create'
  post '/add_trending_products', to: 'trending_products#create'
  resources :user_details
end
