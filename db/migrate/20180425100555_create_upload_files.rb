class CreateUploadFiles < ActiveRecord::Migration[5.1]
  def change
    create_table :upload_files do |t|
      t.string :cover_letter
      t.string :title

      t.timestamps
    end
  end
end
