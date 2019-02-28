class ProductsController < ApplicationController
  def index
  end

  def new
    @prefecture = Prefecture.all
    @category = Category.all
  end

  def show
  end
end
