class ProductsController < ApplicationController
  def index
  end

  def new
    @product = Product.new
    @prefecture = Prefecture.all
    @category = Category.all
    @condition = Condition.all
    @shippingpay = Shippingpay.all
    @shippingday = Shippingday.all
  end

  def show
  end

  def create
    Product.create(product_params)
    render :index
  end

  private

  def product_params
    params.require(:product).permit(:name,:product_description,:category1,:category2,:category3,:brand,:postage,:price,:condition,:shipping_method,:ship_from,:shipping_date)
  end
end
