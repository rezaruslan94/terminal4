class CreateParts < ActiveRecord::Migration[5.0]
  def change
    create_table :parts do |t|
      t.string :number
      t.string :name
      t.float :norms

      t.timestamps
    end
  end
end
