class BuysController < ApplicationController

  def new
    @product = Product.find(1)
    @product_image = ProductImage.find(1)
  end

end
