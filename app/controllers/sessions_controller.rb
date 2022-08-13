# frozen_string_literal: true

class SessionsController < ApplicationController
  # Responsible for creating a session
  def create
    user = User.find_by(email: login_params[:email])
    if user&.authenticate(login_params[:password])
      session[:current_user_id] = user.id
      flash.now[:notice] = 'Logged in successfully'
      redirect_to '/home'
      puts 'worked correctly'
    else
      flash[:error] = 'Invalid email/password combination'

      redirect_to '/login'
    end
  end

  def destroy
    session[:current_user_id] = nil
    # @current_user = nil
    redirect_to root_path
  end

  private

  def login_params
    params.require(:user).permit(:email, :password)
  end
end
