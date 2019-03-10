class BuysController < ApplicationController
  require 'payjp'

  def new
    @product = Product.find(params[:product_id])
    @user_id = current_user.id
    @address = Address.find_by(user_id: @user_id)

  end

  def pay
    @product = Product.find(params[:product_id])
    Payjp.api_key = "sk_test_169820924d58e7be1fff7073"
    carge = Payjp::Charge.create( amount: @product.price, card: params['payjp-token'], currency: 'jpy' )
    flash[:notice] =  "支払いが完了しました"
    redirect_to root_path
  end

end
