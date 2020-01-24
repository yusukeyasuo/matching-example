class UsersController < ApplicationController
  before_action :set_user

  def index
    @user = User.where.not(id: current_user.id).sample
  end

  private
  def user_params
    params.require(:user).permit(:name, :self_introduction, :sex)
  end

  def set_user
    @user = User.find_by(id: params[:id])
  end
end
