class CreateTerminal4outs < ActiveRecord::Migration[5.0]
  def change
    create_table :terminal4outs do |t|
      t.integer :fix
      t.integer :terminal_fourth_id

      t.timestamps
    end
  end
end
