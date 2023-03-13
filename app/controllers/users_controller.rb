class UsersController < ApplicationController
  def new
    binding.pry
    @user = User.new
  end

  def show 
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save 
      flash[:messages] = "Successfully create User, please login..."
    else
      flash[:messages] = @user.errors.full_messages.join(', ')
    end
    redirect_to signup_path 
  end

  def countries
    @countries = Country.pluck(:name, :id)
  end 

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :country)
  end
end
