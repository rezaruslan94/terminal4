class CreateTerminal4updates < ActiveRecord::Migration[5.0]
  def change
    create_table :terminal4updates do |t|
      t.integer :qty
      t.integer :terminal_fourth_id

      t.timestamps
    end
  end
end
