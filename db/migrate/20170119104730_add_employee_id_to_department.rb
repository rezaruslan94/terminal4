class AddEmployeeIdToDepartment < ActiveRecord::Migration[5.0]
  def change
      add_column :departments, :employee_id, :integer
  end
end
