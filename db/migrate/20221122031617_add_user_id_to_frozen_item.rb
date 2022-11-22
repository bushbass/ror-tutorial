class AddUserIdToFrozenItem < ActiveRecord::Migration[7.0]
  def change
    add_column :frozen_items, :user_id, :integer
    add_index :frozen_items, :user_id
  end
end
