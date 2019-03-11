class UsersController < ApplicationController
  before_action :move_to_index, except: [:new]

  def new
  end

  def show
    @user = User.find(params[:id])
  end

  def logout
  end

  def confirmation
  end

  def profile
  end

  private

  def move_to_index
      redirect_to '/' unless user_signed_in?
  end

end
