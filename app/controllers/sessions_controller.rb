class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:success] = "login successful"
      redirect_to root_path
    else
      flash.now[:danger] = "Your email or password does not match"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "logout successful"
    redirect_to login_path
  end
end
