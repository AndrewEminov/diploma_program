class UserRole < ApplicationRecord
  validates :code,
            presence: true,
            uniqueness: true
end
