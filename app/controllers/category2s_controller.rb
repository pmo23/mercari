class Category2sController < ApplicationController
  def index
    category1 = Category1.find(params[:category1_id])
    render json: category1.category2s.select(:id, :name)
  end
end
