class Student < ApplicationRecord
  belongs_to :house
  has_many :signups
  has_many :subjects, through: :signups
end
