class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :information
      t.integer :price
      t.boolean :is_selling
      t.integer :sort_order
      t.references :shop
      t.references :secondary_category

      t.timestamps
    end
  end
end
