class AddDepartmentId < ActiveRecord::Migration[5.1]
  def change
    remove_column :specialities, :department_id, :integer
    add_column :specialities, :department_id, :integer
  end
end
