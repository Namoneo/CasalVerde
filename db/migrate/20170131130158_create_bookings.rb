class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.integer :number_of_nights
      t.integer :number_of_guests
      t.integer :price
      t.string :calendar_name
      t.references :guest
      t.timestamps
    end
  end
end
