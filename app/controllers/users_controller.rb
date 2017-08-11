class UsersController < ApplicationController
  # before_action :set_company, only: [:index]

  def index
  end

  def new
    @user = User.new
    @company = Company.new
  end

  def update
  if current_user.update(user_params)
    redirect_to :root
  end
end

def create
  user = User.new(user_params)
  user.save
  company = Company.new(company_params)
  company.save
end

private
def company_params
  params.require(:company).permit(:name)
end

def user_params
  params.require(:user).permit(:name, :email, :password)
end
end
