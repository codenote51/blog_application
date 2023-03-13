class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show 
    @user = User.find_by(params[:id])
  end

  def create
    @user = User.new(params.require(:user).permit(:name, :email, :password, :password_confirmation))
    if @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def countries
    @countries = Country.pluck(:name, :id)
  end 
end
