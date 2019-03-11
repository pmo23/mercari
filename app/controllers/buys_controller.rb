class BuysController < ApplicationController
  require 'payjp'

  def new
    @product = Product.find(params[:product_id])
    @address = current_user.address
  end

  def create
    @product = Product.find(params[:product_id])
    Payjp.api_key = ENV['PAYJP_SECRET_KEY']
    charge = Payjp::Charge.create( amount: @product.price, card: params['payjp-token'], currency: 'jpy' )
    flash[:notice] =  "支払いが完了しました"
    redirect_to root_path
  end

end
