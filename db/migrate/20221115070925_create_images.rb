class CreateImages < ActiveRecord::Migration[7.0]
  def change
    create_table :images do |t|
      t.string :filename
      t.string :title
      t.references :owner

      t.timestamps
    end
  end
end
