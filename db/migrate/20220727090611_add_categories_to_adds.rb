# frozen_string_literal: true

class AddCategoriesToAdds < ActiveRecord::Migration[6.1]
  def change
    add_column :adds, :categories, :string
  end
end
