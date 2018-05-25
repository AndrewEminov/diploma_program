class CreateInstituteId < ActiveRecord::Migration[5.1]
  def change
    add_column :departments, :institute_id, :integer
  end
end
