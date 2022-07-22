class SessionsController < ApplicationController

  def create    # Responsible for creating a session
    user = User.find_by(email: login_params[:email])
    if user && user.authenticate(login_params[:password])
      flash.now[:notice] = "Logged in successfully"
      redirect_to '/home'
      puts "worked correctly"  
    else 
      flash.now[:alert] = 'Invalid email/password combination'
      redirect_to "/login"
    end
  end

  private
  def login_params
    params.require(:user).permit(:email, :password)
  end
end
