module UserRolesHelper
  def get_role_codes
    UserRole.all.map {|role| role.code}
  end
end