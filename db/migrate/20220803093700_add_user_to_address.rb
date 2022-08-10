# frozen_string_literal: true

class AddUserToAddress < ActiveRecord::Migration[6.1]
  def change
    add_reference :addresses, :users, null: false, foreign_key: true
  end
end
