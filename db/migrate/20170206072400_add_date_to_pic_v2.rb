class AddDateToPicV2 < ActiveRecord::Migration[5.0]
  def change
    add_column :pics, :pic_date, :date
  end
end
