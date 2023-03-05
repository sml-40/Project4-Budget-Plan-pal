class SessionsController < ApplicationController
  def new
 #   render :new login form
    
  end

  def create
 #authenticate user and log them in
 user = User.find_by(email: params[:email])

 if user && user.authenticate(params[:password])
   session[:user_id] = user.id
   redirect_to dashboard_path
 else
   flash.now[:alert] = "Invalid email or password"
   render :new
 end
  end

  def destroy
 #log user out
  end
end
