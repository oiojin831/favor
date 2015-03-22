class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all_except(current_user)
    @friends = current_user.friends
  end

end
