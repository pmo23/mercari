class ProductsController < ApplicationController
  before_action :set_category
  before_action :move_to_signup, except: [:index, :show, :search]
  before_action :set_group, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
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

  def edit
  end

  def update
    if @product.user_id == current_user.id
      @product.update(product_sale_params)
      redirect_to product_path
    end
  end

  def destroy
    @product.destroy if @product.user_id == current_user.id
    flash[:notice] = "商品を削除しました"
    redirect_to root_path
  end

  def search
    @products = Product.where('name LIKE(?)',"%#{params[:keyword]}%")
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

  def move_to_signup
    redirect_to new_user_session_path unless user_signed_in?
  end

  def set_group
    @product = Product.find(params[:id])
  end

end
