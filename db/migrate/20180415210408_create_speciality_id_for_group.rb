class CreateSpecialityIdForGroup < ActiveRecord::Migration[5.1]
  def change
    remove_column :groups, :speciality_id, :integer
    add_column :groups, :speciality_id, :integer
  end
end
