class AddPartIdToPic < ActiveRecord::Migration[5.0]
  def change
    add_column :pics, :part_id, :integer
  end
end
