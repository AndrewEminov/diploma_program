class CreateUploads < ActiveRecord::Migration[5.1]
  def change
    create_table :uploads do |t|
      t.string :cover_letter
      t.string :title

      t.timestamps
    end
  end
end
