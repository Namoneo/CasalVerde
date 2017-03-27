class CreateSeasons < ActiveRecord::Migration[5.0]
  def change
    create_table :seasons do |t|
      t.date :start_date
      t.date :end_date
      t.decimal :nightly_cost
      t.integer :min_stay
      t.decimal :extra_person_night
      t.decimal :deposit

      t.timestamps
    end
  end
end
