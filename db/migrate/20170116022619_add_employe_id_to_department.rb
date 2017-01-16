class AddEmployeIdToDepartment < ActiveRecord::Migration[5.0]
  def change
    add_column :departments, :employe_id, :integer
  end
end
