class AddChangeoverToSeason < ActiveRecord::Migration[5.0]
  def change
    add_column :seasons, :changeover, :boolean
  end
end
