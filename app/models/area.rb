class Area < ApplicationRecord
  has_many :pics
  belongs_to :employe
  belongs_to :division
end
