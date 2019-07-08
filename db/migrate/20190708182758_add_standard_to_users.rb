class AddStandardToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :standard, :boolean
  end
end
