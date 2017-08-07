class DeleteColumnFinishFromTerminaluFourths < ActiveRecord::Migration[5.0]
  def change
    remove_column :terminal_fourths, :finish
  end
end
