class AddAmountToFees < ActiveRecord::Migration[5.2]
  def change
    add_column :fees, :amount, :integer
  end
end
