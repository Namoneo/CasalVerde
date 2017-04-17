class GuestsController < ApplicationController

  def index
    @guests = Guest.all
    @guest = Guest.find(params[:id])
  end

  def new
    @guest = Guest.new
  end

  def create
    @guest = Guest.new(guest_params)
    @booking = Booking.new(booking_params)
    if @guest.save
      redirect_to "http://localhost:3000/" notice: "Thanks for booking"
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :number_of_guests)
  end

  def guest_params
    params.require(:guest).permit(:first_name, :last_name, :date_of_birth, :country, :street, :house_number, :zip_code, :city, :phone_number, :email, :email_confirmation, :booking_id)
  end

  def set_guest
    @guest = Guest.find(params[:id])
  end
end
