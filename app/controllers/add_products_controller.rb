class AddProductsController < ApplicationController
  # before_action :ensure_user_logged_in
  def index
  end

  def create 
    
    add = Add.new(product_params)
   
    if add.save
       redirect_to '/add_products'
      #  render plain: "Successfull"
    else
      flash.now[:alert] = "Not created"
      render plain:"failed"
    end
  end

  private
  def product_params
    params.require(:add).permit(:product_name,:image_url,:price,:description,:actualprice,:categories)
  end
end
