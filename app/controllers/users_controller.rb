class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show 
    @user = User.find_by(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:info] = "Please check your email to activate your account."
      #redirect_to root_url
      redirect_to 'user_url'
    else
      redirect_to '/signup'
    end
  end

  def countries
    @countries = Country.pluck(:name, :id)
  end 

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :country)
  end
end
