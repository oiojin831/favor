class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all_except(current_user)
    @friends = current_user.friends
    @pendings = current_user.pending_friends
    @requesteds = current_user.requested_friendships
  end

end
