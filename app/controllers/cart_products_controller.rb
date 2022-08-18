# frozen_string_literal: true

class CartProductsController < ApplicationController
  def cart
    @cart_products = Add.joins(:cart).all.map do |cart_products|
      cart_products
    end
  end

  def destroy
    cart_product_id = params[:cart_id]
    delete_product = Cart.find_by(params[add_id: cart_product_id])
    if delete_product.destroy
      redirect_to '/cart_page'
    else
      render plain: false
    end
  end

  def order_item
    current_user = session[:current_user_id]
    if current_user.nil?
      flash[:alert] = 'Please Signup'
      redirect_to 'products_page'
    else
      redirect_to 'payments'
    end
  end
end
