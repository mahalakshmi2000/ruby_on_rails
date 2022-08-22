# frozen_string_literal: true

class PaymentsController < ApplicationController
  def user_payment; end

  def user_profile
    @user_details = User.find(session[:current_user_id])
  end
end
