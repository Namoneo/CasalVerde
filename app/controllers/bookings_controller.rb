class BookingsController < ApplicationController
  layout "creative"

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to edit_booking_path(@booking)
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update_attributes(booking_params)
    ConfirmationMailer.new_confirmation(@booking).deliver_now
  end
  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :number_of_guests, :first_name, :last_name, :date_of_birth, :country, :street, :house_number, :zip_code, :city, :phone_number, :email, :email_confirmation)
  end
end
