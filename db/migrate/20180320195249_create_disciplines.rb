class CreateDisciplines < ActiveRecord::Migration[5.1]
  def change
    create_table :disciplines do |t|
      t.string :name
      t.integer :speciality_id
      t.integer :hour_count
      t.text :literature
      t.integer :semester_count

      t.timestamps
    end
  end
end
