class GuestsController < ApplicationController
  before_action :set_guest, only: [:show, :edit, :update]

  def index
    @guests = Guest.all
  end

  def new
    @guest = Guest.new

  end

  def edit

  end

  def create
    @guest = Guest.new(guest_params)

    if @guest.save
      redirect_to @guest, notice: "Thanks for booking!"
    else
      render :new
    end
  end

  def update
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :number_of_guests)
  end

  def guest_params
    params.require(:guest).permit(:first_name, :last_name, :date_of_birth, :country, :street, :house_number, :zip_code, :city, :phone_number, :email)
  end

  def set_guest
    @guest = Guest.find(params[:id])
  end
end
