class RenameColumnQtyToQtyFinishFromTerminal4update < ActiveRecord::Migration[5.0]
  def change
    rename_column :terminal4updates, :qty, :qty_finish
  end
end
