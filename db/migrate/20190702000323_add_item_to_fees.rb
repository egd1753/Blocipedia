class AddItemToFees < ActiveRecord::Migration[5.2]
  def change
    add_column :fees, :item, :string
  end
end
