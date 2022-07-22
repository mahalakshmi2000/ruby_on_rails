class DecoromsController < ApplicationController
  def render_login
    render "sessions/login"
  end
  def render_signup
    render "users/signup"
  end
  def render_home
    render "decoroms/index"
  end
   def render_list
     render "decoroms/product_list"
   end
  def render_add
    render "add_products/add"
  end
end
