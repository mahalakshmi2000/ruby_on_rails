class UsersController < ApplicationController
  def signup
      @user_data = User.new
  end

  def create
    @user_data = User.new(user_details)
   
    if @user_data.save
      redirect_to '/homepage'
      # render plain: "Successfull"
    else
      render plain: "failed"
    end
  end
  
  def user_details
    params.require(:user).permit(:user_name,:phone_number,:email,:password_digest)
  end
  # private :user_details
end
