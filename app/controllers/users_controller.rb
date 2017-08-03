class UsersController < ApplicationController

  def index
  end

  def new
    @user = User.new
    if @user.save
      redirect_to :root
  end
end

  def create
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
