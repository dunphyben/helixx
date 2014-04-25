class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

private
  def strong
    params.require(:user).permit(:username, :email, :password, :password_digest)
  end
end
