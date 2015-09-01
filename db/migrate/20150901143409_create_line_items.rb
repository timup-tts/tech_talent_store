class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :quantity
      t.float :line_item_total
      t.references :order, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
