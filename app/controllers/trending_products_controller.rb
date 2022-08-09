class TrendingProductsController < ApplicationController
  def index
  end
  def create
      products = TrendingProduct.new(products_params)
      if products.save
        # redirect_to '/add_products'
         render plain: "Successfull"
      else
        flash.now[:alert] = "Not created"
        render plain:"failed"
      end
  end
  private
  def products_params
    params.require(:trending_products).permit(:product_name,:image_url,:price,:description,:category)
  end
end
