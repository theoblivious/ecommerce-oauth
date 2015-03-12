class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice]= "Welcome to the Site"
      redirect_to "/"  #may change this later to a different redirect
    else
      flash[:alert] = "There was a problem signing in"
      redirect_to :back
    end
  end


  private

  # this protects our databse
  def user_params
  	params.require(:user).permit(:email,:password, :password_confirmation)
  end
end

