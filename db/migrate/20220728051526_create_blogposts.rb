# frozen_string_literal: true

class CreateBlogposts < ActiveRecord::Migration[6.1]
  def change
    create_table :blogposts do |t|
      t.string :title

      t.timestamps
    end
  end
end
