# frozen_string_literal: true

class CreateUserAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :user_addresses do |t|
      t.bigint :pincode
      t.string :landmark
      t.string :address
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
