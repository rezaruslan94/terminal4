class Division < ApplicationRecord
  belongs_to :employe
  belongs_to :department
  has_many :areas
end
