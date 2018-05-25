class CreateDepartments < ActiveRecord::Migration[5.1]
  def change
    create_table :departments do |t|
      t.string :name
      t.string :full_name
      t.string :description

      t.timestamps
    end
  end
end
