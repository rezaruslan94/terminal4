class AddDateToPic < ActiveRecord::Migration[5.0]
  def change
    add_column :pics, :date, :string
  end
end
