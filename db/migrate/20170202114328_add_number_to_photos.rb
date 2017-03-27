class AddNumberToPhotos < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :number, :integer
  end
end
