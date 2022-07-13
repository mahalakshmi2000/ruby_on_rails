class CustomersController < ApplicationController
  def login
    @user = User.new
    @get_details = User.All
  end
  def create
    session_params = params.permit(:email, :password)
    @user = User.find_by(email: params[:email])
    if @user != @get_details
      flash.now[:notice] = "Logged in successfully"
      redirect_to '/homepage'
    else
      flash.now[:alert] = "Login is invalid!"
      render 'login'
    end
  end
  def check
    user_details = User.find_by(email_id: params[:email_id])
        if @input_list != user_details 
        flash.now[:notice] = "Logged in successfully"
        redirect_to '/home'
        else
          flash.now[:alert] = "Invalid email/password combination"
          render 'login'
        end
      end
end
