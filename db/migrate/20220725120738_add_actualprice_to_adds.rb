# frozen_string_literal: true

class AddActualpriceToAdds < ActiveRecord::Migration[6.1]
  def change
    add_column :adds, :actualprice, :bigint
  end
end
