class AddNameToQuestion < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :name, :string
  end
end
