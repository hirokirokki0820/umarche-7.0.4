class CreateShops < ActiveRecord::Migration[7.0]
  def change
    create_table :shops do |t|
      t.references :owner
      t.string :name
      t.text :information
      t.boolean :is_selling

      t.timestamps
    end
  end
end
