class Group < ApplicationRecord
  belongs_to :speciality
  has_many :users
end
