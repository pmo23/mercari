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
end
