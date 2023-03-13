class ApplicationController < ActionController::Base
  # before_action :require_login

  def user
    @user ||= User.find_by(id: session[:user_id])
  end

 private
  # def require_login
  #   unless logger 
  #     # flash[:notice] = "You must be logged in to access this section"
  #     redirect_to new_login_url 
  #   end
  # end
end
