class AddEmployeIdToArea < ActiveRecord::Migration[5.0]
  def change
    add_column :areas, :employe_id, :integer    
  end
end
