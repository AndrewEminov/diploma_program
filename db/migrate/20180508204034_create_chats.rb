class CreateChats < ActiveRecord::Migration[5.1]
  def change
    create_table :chats do |t|
      t.text :massages
      t.string :id_user
      t.string :int
      t.string :id_massages
      t.string :int

      t.timestamps
    end
  end
end
