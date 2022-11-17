class CreatePrimaryCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :primary_categories do |t|
      t.string :name
      t.integer :sort_order
    end
  end
end
