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
      flash.now[:now] = "Successfully create User, please login..."
    else
      flash.now[:now] = @user.errors.full_messages.join(', ')
    end
    redirect_to root_url
  end

  def countries
    @countries = Country.pluck(:name, :id)
  end 

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :country)
  end
end
