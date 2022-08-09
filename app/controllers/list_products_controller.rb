class ListProductsController < ApplicationController
  # include Pagy::Backend
  def shop
    product_list = Add.new
    @showlist = Add.all.map do |list|
      list
    end
    @showlist
    
     @pagy,@page_post = pagy(Add.all, items: 9)
  end
end
