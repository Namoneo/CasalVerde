class GuestsController < ApplicationController
  before_action :set_guest, except: [:index, :new, :create]

  def index
    @guests = Guest.all
  end

  def new
    @guest = Guest.new
  end

  def show
    @guests = Guest.all
  end

  def edit
  end

  def create
    @guest = Guest.new(guest_params)

    if @guest.save
      redirect_to edit_booking_path(@booking)
    else
      render :new
    end
  end

  def update
  end

  private

  def guest_params
    params.require(:guest).permit(:salutation, :first_name, :insertion, :last_name, :date_of_birth, :country, :street, :house_number, :zip_code, :city, :phone_number, :email)
  end

  def set_guest
    @guest = Guest.find(params[:id])
  end
end
