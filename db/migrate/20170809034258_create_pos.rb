class CreatePos < ActiveRecord::Migration[5.0]
  def change
    create_table :pos do |t|
      t.string :number
      t.integer :buyer_id

      t.timestamps
    end
  end
end
