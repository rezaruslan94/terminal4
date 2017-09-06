class CreatePoUpdates < ActiveRecord::Migration[5.0]
  def change
    create_table :po_updates do |t|
      t.integer :qty_finish
      t.integer :po_item_id

      t.timestamps
    end
  end
end
