class Api::UsersController < ApplicationController

  def new

  end

  def create
    debugger
    @user = User.new(user_params)
    if @user.save
      login(@user)
      # redirect_to "HOME"
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
