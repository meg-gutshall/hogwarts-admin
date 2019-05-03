class Teacher < ApplicationRecord
  has_one :subject
  belongs_to :house
end
