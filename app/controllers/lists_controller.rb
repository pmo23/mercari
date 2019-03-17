class ListsController < ApplicationController
  before_action :move_to_index, except: [:new]

  def index
    @products = Product.where(user_id: "#{current_user.id}")
  end

  private

  def move_to_index
    redirect_to '/' unless user_signed_in?
  end

end
