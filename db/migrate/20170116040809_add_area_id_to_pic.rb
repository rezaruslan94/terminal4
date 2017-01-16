class AddAreaIdToPic < ActiveRecord::Migration[5.0]
  def change
    add_column :pics, :area_id, :integer
  end
end
