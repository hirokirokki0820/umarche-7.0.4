class CreateStocks < ActiveRecord::Migration[7.0]
  def change
    create_table :stocks do |t|
      t.integer :type
      t.integer :quantity
      t.references :product

      t.timestamps
    end
  end
end
