class AddDescriptionToAdds < ActiveRecord::Migration[6.1]
  def change
    add_column :adds, :description, :string
  end
end
