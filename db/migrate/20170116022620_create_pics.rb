class CreatePics < ActiveRecord::Migration[5.0]
  def change
    create_table :pics do |t|
      t.float :wh
      t.float :qty

      t.timestamps
    end
  end
end
