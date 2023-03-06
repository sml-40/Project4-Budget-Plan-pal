class SessionsController < ApplicationController
  def new
    #   render :new login form
    @user = User.new 
  end

  def create
    # authenticate user and log them in
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to dashboard_path, notice: "Logged in!"
    else
      flash[:notice] = "Login is invalid!"
      redirect_to login_path
    end
  end

  def destroy
    #log user out
    session[:user_id] = nil
    redirect_to login_path, notice: "You have been logged out."
  end

  private

  def log_in(user)
    session[:user_id] = user.id
  end
end
