class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = current_user
  end

  def create
    @user = User.create(user_params)
    if @user.save
      flash[:success] = "Your account has been created successfully."
      redirect_to login_path
    else
      render :new
    end
  end

  def destroy
    @user = current_user
    @user.destroy
    redirect_to root_path, notice: "Your account has been deleted successfully."
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :username, :password)  
  end
end
