class Department < ApplicationRecord
  belongs_to :institute
  has_many :specialities
end
