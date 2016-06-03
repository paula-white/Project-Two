class SessionController < ApplicationController
  before_action :authenticate, :only =>[:new]

  def new
    # Show the login form
  end


  def create
    # Process the login form when it is submitted
    user = User.find_by :email => params[:email]

    if user.present? && user.authenticate( params[:password])
      session[:user_id] = user.id
      flash[:success] = "Successfully logged in"
      redirect_to leagues_path
    else
      flash[:error] = "Invalid email or password"
      redirect_to login_path
  end
end

  def destroy
    session[:user_id] = nil
    flash[:success] = "Successfully logged out"
    redirect_to login_path

  end

  private
  def authenticate
    # redirect_to :back if @current_user
    redirect_to leagues_path if @current_user
  end
end
