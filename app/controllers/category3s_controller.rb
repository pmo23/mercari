class Category3sController < ApplicationController
  def index
    category2 = Category2.find(params[:category2_id])
    render json: category2.category3s.select(:id, :name)
  end
end
