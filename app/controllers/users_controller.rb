class UsersController < ApplicationController
  def show
    @user = User.last
  end

  def new
  end

  def create
  end
end
