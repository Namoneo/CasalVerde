class CreateContents < ActiveRecord::Migration[5.0]
  def change
    create_table :contents do |t|
      t.string :title
      t.text :paragraph
      t.text :list

      t.timestamps
    end
  end
end
