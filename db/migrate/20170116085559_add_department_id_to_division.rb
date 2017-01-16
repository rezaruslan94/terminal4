class AddDepartmentIdToDivision < ActiveRecord::Migration[5.0]
  def change
    add_column :divisions, :department_id, :integer
  end
end
