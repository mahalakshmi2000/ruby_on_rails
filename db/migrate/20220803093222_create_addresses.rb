# frozen_string_literal: true

class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :country
      t.bigint :pincode
      t.string :flat_no
      t.string :street
      t.string :landmark
      t.string :city
      t.string :state
      t.string :address_type

      t.timestamps
    end
  end
end
