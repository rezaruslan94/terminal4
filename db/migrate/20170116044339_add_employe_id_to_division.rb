class AddEmployeIdToDivision < ActiveRecord::Migration[5.0]
  def change
    add_column :divisions, :employe_id, :integer
  end
end
