class AddUserRole < ActiveRecord::Migration[5.1]
  def change
    create_table :user_roles do |t|
      t.string :code
      t.timestamps
    end

    add_column :users, :user_role_id, :integer
  end
end
