class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash.now[:error] = 'Invalid email/password combination'
      redirect_to '/signup'
    end
  end

  def destroy
    session.delete(:user_id)
    @user = nil

    redirect_to root_path
  end
end

