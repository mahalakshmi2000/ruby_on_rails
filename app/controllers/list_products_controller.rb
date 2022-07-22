class ListProductsController < ApplicationController
  def shop
    product_list = Add.new
    @showlist = Add.all.map do |list|
      list
    end
    @showlist
  end
end
