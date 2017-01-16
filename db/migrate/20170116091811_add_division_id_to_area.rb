class AddDivisionIdToArea < ActiveRecord::Migration[5.0]
  def change
    add_column :areas, :division_id, :integer
  end
end
