class BookingsController < ApplicationController
  layout "creative"
  before_action :set_guest, only: [:create, :show, :edit, :update]


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
    @guest = Guest.new
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update_attributes(booking_params)
    redirect_to 'index'
    ConfirmationMailer.new_confirmation(@guest).deliver_now
  end
  private

  def set_guest
    @guest = Guest.new
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :number_of_guests, :guest_id)
  end

  def guest_params
    params.require(:guest).permit(:salutation, :first_name, :insertion, :last_name, :date_of_birth, :country, :street, :house_number, :zip_code, :city, :phone_number, :email)
  end
end
