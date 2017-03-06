class Area < ApplicationRecord
  has_many :pics
  belongs_to :employee
  belongs_to :division

  delegate :name, to: :employee, prefix: true, allow_nil: true
  delegate :name, :to => :division, prefix: true, :allow_nil => true
end
