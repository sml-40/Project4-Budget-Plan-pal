class SessionsController < ApplicationController
  def new
 #   render :new login form
    
  end

  def create
 #authenticate user and log them in
 user = User.authenticate(params[:session][:email], params[:session][:password])
    if user
      log_in user
      redirect_to root_url
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
 #log user out
  end
end
