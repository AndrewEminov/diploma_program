class AddUploads < ActiveRecord::Migration[5.1]
  def change
    add_column :institutes, :title, :string
  end
end
