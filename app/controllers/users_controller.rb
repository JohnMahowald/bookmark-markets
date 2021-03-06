class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new(user_params)

    if @user.save!
      render :show
    else
      render :new
    end
  end

  def show
  end

  private

  def user_params
    params.require(:user).permit(:email)
  end
end
