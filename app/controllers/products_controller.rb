class ProductsController < ApplicationController
  def index
  end

  def new
    @prefecture = Prefecture.all
    @category = Category.all
    @condition = Condition.all
    @shippingpay = Shippingpay.all
    @shippingday = Shippingday.all
  end

  def show
  end

  def buy
    @product = Product.find(1)
    @product_image = ProductImage.find(1)
  end

end
