class CreateAdds < ActiveRecord::Migration[6.1]
  def change
    create_table :adds do |t|
      t.string :product_name
      t.blob :image_url
      t.bigint :price

      t.timestamps
    end
  end
end
