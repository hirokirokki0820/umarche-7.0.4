class ChangeNameToOwner < ActiveRecord::Migration[7.0]
  def change
    change_column :owners, :name, :string
  end
end
