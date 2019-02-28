class ProductsController < ApplicationController
  def index
  end

  def new
    @prefecture = Prefecture.all
  end

  def show
  end
end
