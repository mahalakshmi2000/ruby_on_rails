class AddAddToCart < ActiveRecord::Migration[6.1]
  def change
    add_reference :carts, :add, null: false, foreign_key: true
  end
end
