class RelationshipsController < ApplicationController

  # フォローするとき
  def create
    user = User.find(params[:user_id])
    current_user.follow(user)
    redirect_to users_path
  end

  # フォロー外すとき
  def destroy
    user = User.find(params[:user_id])
    current_user.unfollow(user)
    redirect_to users_path
  end

end
