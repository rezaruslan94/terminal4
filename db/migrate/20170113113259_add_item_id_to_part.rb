class AddItemIdToPart < ActiveRecord::Migration[5.0]
  def change
    add_column :parts, :item_id, :integer
  end
end
