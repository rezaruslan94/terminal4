class AddEmployeeIdToDivision < ActiveRecord::Migration[5.0]
  def change
    add_column :divisions, :employee_id, :integer
  end
end
