class RemoveDateFromPic < ActiveRecord::Migration[5.0]
  def change
    remove_column :pics, :date, :string
  end
end
