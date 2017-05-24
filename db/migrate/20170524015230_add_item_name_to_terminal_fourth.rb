class AddItemNameToTerminalFourth < ActiveRecord::Migration[5.0]
  def change
    add_column :terminal_fourths, :item_name, :string    
  end
end
