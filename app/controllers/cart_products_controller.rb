# frozen_string_literal: true

class CartProductsController < ApplicationController
  def cart
    @cart_products = Add.joins(:cart).all.map do |cart_products|
      cart_products
    end
  end
end
