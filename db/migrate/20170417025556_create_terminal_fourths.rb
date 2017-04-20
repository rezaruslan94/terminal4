class CreateTerminalFourths < ActiveRecord::Migration[5.0]
  def change
    create_table :terminal_fourths do |t|
      t.string :po
      t.integer :qty
      t.integer :finish
      t.date :terminal_inspect
      t.date :terminal_stuffing
      t.integer :buyer_id
      t.integer :item_id

      t.timestamps
    end
  end
end
