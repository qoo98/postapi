# frozen_string_literal: true

class CreatePostals < ActiveRecord::Migration[7.0]
  def change
    create_table :postals do |t|
      t.integer :postal_code
      t.string :prefecture
      t.string :city
      t.string :town

      t.timestamps
    end
  end
end
