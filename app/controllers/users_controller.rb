# frozen_string_literal: true

class UsersController < ApplicationController
  def signup
    @user_data = User.new
  end

  def create
    @user_data = User.new(user_details)

    if @user_data.save
      redirect_to '/home'
      # render plain: "Successfull"
    else
      flash.now[:alert] = 'Not created'
      render '/signup'
    end
  end

  private

  def user_details
    params.require(:user).permit(:user_name, :phone_number, :email, :password)
  end
end
