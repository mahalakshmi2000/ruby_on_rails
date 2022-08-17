# frozen_string_literal: true

class CartProductsController < ApplicationController
  def cart
    @cart_products = Add.joins(:cart).all.map do |cart_products|
      cart_products
    end
  end

  def destroy
    @product = Cart.find(params[:id])
    @product.destroy
    redirect_to products_path
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
