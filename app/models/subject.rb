class Subject < ApplicationRecord
  belongs_to :teacher
  has_many :signups
  has_many :students, through: :signups
end
