# frozen_string_literal: true

class UserDetailsController < ApplicationController
  def new; end

  def create
    current_user
    puts '-----------------'
    puts current_user.id
    address = Address.new(users_id: current_user.id, country: address_params[:country], pincode: address_params[:pincode],
                          flat_no: address_params[:flat_no], street: address_params[:street], landmark: address_params[:landmark], city: address_params[:city], state: address_params[:state], address_type: address_params[:address_type])
    if address.save
      # redirect_to '/home'
      render plain: 'Successfull'
    else
      flash.now[:alert] = 'Not created'
      render plain: 'failed'
    end
  end

  private

  def address_params
    params.require(:address).permit(:country, :pincode, :flat_no, :street, :landmark, :city, :state, :address_type)
  end
end
