class RemoveColumns < ActiveRecord::Migration[5.0]
  def change
    remove_column :contents, :title
    remove_column :contents, :list
  end
end
