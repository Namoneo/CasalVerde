require 'rails_helper'

RSpec.describe BookingsController, type: :controller do
  it { should route(:get, '/bookings/new').to(action: :new) }
  it { should route(:post, '/bookings').to(action: :create) }


  # it do
  #    params = {
  #      booking: {
  #        start_date: 1-3-2017
  #      end_date: 8-3-2017
  #      number_of_guests: 10
  #        first_name: 'John',
  #        last_name: 'Doe',
  #        date_of_birth: 23-09-1983
  #        country: 'Nederland'
  #        street: 'singel'
  #        house_number: 20
  #        zip_code: 1230
  #        city: 'Amsterdam'
  #        email:'johndoe@example.com',
  #        password: 'password'
  #      }
  #    }
  #    should permit(:start_date, :end_date, :number_of_guests, :first_name, :last_name, :date_of_birth, :country, :street, :house_number,
  #     :zip_code, :city, :email, :email_confirmation).
  #      for(:create, params: params).
  #      on(:booking)
  # end

end
