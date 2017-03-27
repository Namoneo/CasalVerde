class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.integer :number_of_nights
      t.integer :number_of_guests
      t.integer :salutation
      t.string :first_name
      t.string :insertion
      t.string :last_name
      t.date :date_of_birth
      t.string :country
      t.string :street
      t.integer :house_number
      t.string :zip_code
      t.string :city
      t.string :phone_number
      t.string :email

      t.timestamps
    end
  end
end
