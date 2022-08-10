# frozen_string_literal: true

class CreateTrendingProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :trending_products do |t|
      t.string :product_name
      t.blob :image_url
      t.bigint :price
      t.string :description
      t.string :category

      t.timestamps
    end
  end
end
