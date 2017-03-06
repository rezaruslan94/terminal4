# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(:email => 'user@gmail.com' , :password => 'reza10451')
User.create(:email => 'admin@gmail.com' , :password => 'reza10451')

Employee.create(:name => 'SUJOKO')
Employee.create(:name => 'ARIFIN')
Employee.create(:name => 'SUPRAYITNO')
Employee.create(:name => 'TATANG')
Employee.create(:name => 'SOLIKIN')
Employee.create(:name => 'WIDADI')
Employee.create(:name => 'M YANTO')
Employee.create(:name => 'MIRTA')
Employee.create(:name => 'PURWANTO')
Employee.create(:name => 'NGASIRIN')
Employee.create(:name => 'AMRAN')
Employee.create(:name => 'WAWAN H')
Employee.create(:name => 'DEBI S')
Employee.create(:name => 'DARYONO')
Employee.create(:name => 'DARTO')
Employee.create(:name => 'M. GUNTUR')
Employee.create(:name => 'WAHYU')
Employee.create(:name => 'SLAMET')
Employee.create(:name => 'IKROM M')

Department.create(:name => 'PRODUKSI', :employee_id => '19')

Division.create(:name => 'PEMBAHAN', :department_id => '1', :employee_id => '3')
Division.create(:name => 'PEMESIN', :department_id => '1', :employee_id => '6')
Division.create(:name => 'RAKIT', :department_id => '1', :employee_id => '12')
Division.create(:name => 'FINISHING', :department_id => '1', :employee_id => '16')
Division.create(:name => 'FAPS', :department_id => '1', :employee_id => '18')

Area.create(:name => 'PBN 1A', :division_id => '1', :employee_id => '1')
Area.create(:name => 'PBN 2A', :division_id => '1', :employee_id => '2')
Area.create(:name => 'Mesin 1', :division_id => '2', :employee_id => '4')
Area.create(:name => 'Mesin 2', :division_id => '2', :employee_id => '5')
Area.create(:name => 'RAKIT 2', :division_id => '3', :employee_id => '7')
Area.create(:name => 'RAKIT 1', :division_id => '3', :employee_id => '8')
Area.create(:name => 'RAKIT 3', :division_id => '3', :employee_id => '9')
Area.create(:name => 'RAKIT 4', :division_id => '3', :employee_id => '10')
Area.create(:name => 'AMPLAS DASAR', :division_id => '3', :employee_id => '11')
Area.create(:name => 'GKM', :division_id => '4', :employee_id => '13')
Area.create(:name => ' CONVEYER', :division_id => '4', :employee_id => '14')
Area.create(:name => 'SANDING', :division_id => '4', :employee_id => '15')
Area.create(:name => 'FAPS', :division_id => '5', :employee_id => '17')

Item.create(:name => 'TLU/0140/TG')

Part.create(:number => 'TLU 1003', :name => 'Bahan Panel Top 2', :norms => '0.025', :item_id => '1')
Part.create(:number => 'TLU 1002', :name => 'Palang Kaki A', :norms => '0.05', :item_id => '1')
Part.create(:number => 'TLU 1003', :name => 'Palang Kaki B', :norms => '0.065', :item_id => '1')
Part.create(:number => 'TLU 1004', :name => 'Palang Kaki C', :norms => '0.015', :item_id => '1')
Part.create(:number => 'TLU 1005', :name => 'Palang Kaki D', :norms => '0.065', :item_id => '1')
