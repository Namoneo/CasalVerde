class AddOriginToBooking < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :origin, :integer, :default => 0
  end
end
