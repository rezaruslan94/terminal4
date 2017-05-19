class Role < ApplicationRecord
  has_and_belongs_to_many :users

  def self.admin_role
    self.find_by(name: 'ADMIN')
  end
  def self.qc_role
    self.find_by(name: 'QC')
  end
  def self.faps_role
    self.find_by(name: 'FAPS')
  end
end
