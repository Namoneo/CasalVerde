class Admin::GuestsController < Admin::BaseController
before_action :set_guest, except: [:index, :new, :create]
  
  def index
    @guests = Guest.all
  end

  private

  def guest_params
    params.require(:guest).permit(:first_name, :last_name, :date_of_birth, :country, :street, :house_number, :zip_code, :city, :phone_number, :email, :email_confirmation, :booking_id)
  end

  def set_guest
    @guest = Guest.find(params[:id])
  end
end