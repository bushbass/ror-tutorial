class CreateFrozenItems < ActiveRecord::Migration[7.0]
  def change
    create_table :frozen_items do |t|
      t.string :frozen_item
      t.date :date_on_package

      t.timestamps
    end
  end
end
