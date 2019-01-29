class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def create
    user = User.new(user_params)
    user.save!
    render json: user
  end

  def destroy
    # debugger
    user = User.find_by(id: params[:id])
    user.destroy!
  end

  def show
    render json: params
  end

  def update
    user = User.find_by(id: params[:id])
    # debugger
    if user.update(user_params)
      render json: user
    else
      render json: user.errors.full_messages, status: 501
    end
      
  end

  private
  def user_params
    params.require(:user).permit(:username)
  end

end