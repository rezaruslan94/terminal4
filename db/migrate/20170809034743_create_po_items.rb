class CreatePoItems < ActiveRecord::Migration[5.0]
  def change
    create_table :po_items do |t|
      t.integer :qty
      t.date :po_inspect
      t.date :po_stuffing
      t.integer :po_id
      t.integer :item_id

      t.timestamps
    end
  end
end
