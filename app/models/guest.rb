class Guest < ApplicationRecord
  has_many :bookings


  # validates_presence_of :first_name, :last_name, :date_of_birth, :country, :street, :house_number, :zip_code, :city, :phone_number, :email


  #validates  presence: true


  # def full_name
  #   "#{first_name} #{insertion} #{last_name}"
  # end
end
