class AddSpecialityFields < ActiveRecord::Migration[5.1]
  def change
    remove_column :specialities, :is_fulltime
    remove_column :specialities, :position_count

    add_column :specialities, :is_fulltime, :integer,
               scale: 2, null: false, default: 0
    add_column :specialities, :position_count, :integer,
               null: false, default: 0
  end
end
