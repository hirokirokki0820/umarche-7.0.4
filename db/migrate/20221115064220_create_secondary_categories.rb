class CreateSecondaryCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :secondary_categories do |t|
      t.string :name
      t.integer :sort_order
      t.references :primary_category
    end
  end
end
