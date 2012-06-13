class CreateSoups < ActiveRecord::Migration
  def change
    create_table :soups do |t|
      t.string :title
      t.text :recipe
      t.text :ingredients
      t.integer :user_id

      t.timestamps
    end
    add_index :soups, [:user_id, :created_at]
  end
end
