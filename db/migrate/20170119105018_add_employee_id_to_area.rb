class AddEmployeeIdToArea < ActiveRecord::Migration[5.0]
  def change
    add_column :areas, :employee_id, :integer
  end
end
