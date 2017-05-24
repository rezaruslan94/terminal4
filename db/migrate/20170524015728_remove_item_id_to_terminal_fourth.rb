class RemoveItemIdToTerminalFourth < ActiveRecord::Migration[5.0]
  def change
    remove_column :terminal_fourths, :item_id
  end
end
