class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Welcome to the General Superintendent Book Distribution Platform #{@user.username} group, you have successfully signed up"
      redirect_to groups_path
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
