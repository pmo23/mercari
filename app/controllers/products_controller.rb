class ProductsController < ApplicationController
  before_action :set_category
  before_action :move_to_index, except: [:index, :show]

  def index
  end

  def new
    @product = Product.new
  end

  def show
  end

  def create
    @product = Product.new(product_sale_params)
    if @product.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def product_sale_params
    params.require(:product).permit(:name,:product_description,:category1,:category2,:category3,:brand,:postage,:price,:condition,:shipping_method,:ship_from,:shipping_date,:image).merge(sales_condition: 1,user_id: current_user.id)
  end

  def set_category
    @prefecture = Prefecture.all
    @category = Category.all
    @condition = Condition.all
    @shippingpay = Shippingpay.all
    @shippingday = Shippingday.all
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
