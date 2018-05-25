class SetupDefaultRoles < ActiveRecord::Migration[5.1]
  def change
    UserRole.create(code: :student)
    UserRole.create(code: :professor)
    UserRole.create(code: :admin)
  end
end
