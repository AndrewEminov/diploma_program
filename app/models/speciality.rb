class Speciality < ApplicationRecord
  belongs_to :department
  has_many :groups
  has_many :disciplines
end
