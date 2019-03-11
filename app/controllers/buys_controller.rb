class BuysController < ApplicationController

  def new
    @product = Product.find(params[:product_id])
    # @product_image = ProductImage.find(params[:id])
    @address = Address.find(current_user)
  end

end
