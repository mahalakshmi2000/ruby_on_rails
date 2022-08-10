# frozen_string_literal: true

class CartProductsController < ApplicationController
  def cart; end

  def create
    current_user = session[:current_user_id]
    if current_user.nil?
      flash[:alert] = 'Please Signup'
      redirect_to 'list_products/shop'

    else
      product_id = params[:product_id]
      puts "product_id is #{product_id}"

    end
  end
end
