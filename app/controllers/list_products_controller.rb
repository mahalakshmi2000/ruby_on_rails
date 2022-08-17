# frozen_string_literal: true

class ListProductsController < ApplicationController
  include Pagy::Backend
  def shop
    product_list = Add.new
    @showlist = Add.all.map do |list|
      list
    end
    @showlist

    @pagy, @page_post = pagy(Add.all, items: 9)
  end

  def cart_items
    current_user = session[:current_user_id]
    if current_user.nil?
      flash[:alert] = 'Please Signup'
      redirect_to 'products_page'

    else
      product_id = params[:product_id]
      puts "product_id is #{product_id}"
      temp = Cart.select('add_id')
      p temp
      count = 1
      count += 1
      if temp

        # puts "count #{count}"
        # flash.flash[:error]  = 'already created'
        # redirect_to '/products_page'
        render plain: 'Failed to create account!'
      else
        @cart_items = Cart.create(add_id: product_id)
        redirect_to '/cart_page'
        # render plain: "success"
      end

    end
  end

  def search
    @products1 = Add.where('description Like ?', "%#{params[:q]}%")
  end
end
