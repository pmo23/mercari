class UsersController < ApplicationController
  before_action :move_to_index, except: [:new]

  def new
  end

  def show
  end

  def logout
  end

  private

  def move_to_index
      redirect_to '/' unless user_signed_in?
  end

end
