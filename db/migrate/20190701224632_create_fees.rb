class CreateFees < ActiveRecord::Migration[5.2]
  def change
    create_table :fees do |t|

      t.timestamps
    end
  end
end
