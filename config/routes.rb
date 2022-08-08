Rails.application.routes.draw do
  get 'cart_products/cart'
  get 'payments/user_payment'
  # get '/address','user_details#address'
  get '/paintings', to:'categories#wallpainting'
  get '/statues', to:'categories#statue'
  get '/lights', to:'categories#light'
  get '/clocks', to:'categories#wallclock'
  get '/antiques', to:'categories#antique'
  get '/candleholders', to:'categories#candleholder'
  get '/shelfhangings', to:'categories#shelfhanging'








  get 'blog_post/index'
  get 'list_products/shop'
  # get 'add_products/add'
  get  '/nav',to: 'decoroms#render_list'
  get '/home', to: 'decoroms#index'
  get '/login', to: 'decoroms#render_login'
  get '/signup', to: 'decoroms#render_signup'
  # get '/product_form', to: 'add_products#add'
  post 'add_products_path', to: 'add_products#create'
  resources :add_products
  
  
  post '/create_new_user', to: 'users#create'
  post '/create_session', to: 'sessions#create'
  # post  '/products', to: 'add_products#create'
  resources :user_details
end
