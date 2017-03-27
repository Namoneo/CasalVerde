class Admin::BookingsController < Admin::BaseController
before_action :set_booking, except: [:index, :new, :create]

  def index
    @bookings = Booking.all
    @bookings_casal = Booking.casal
    @bookings_bookingcom = Booking.bookingcom
    @bookings_micazu = Booking.micazu
  end


  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to admin_bookings_path
    else
      render :new
    end
  end

  def new
    @booking = Booking.new
  end

  def edit
  end

  def update

    if @booking.update_attributes(booking_params)
       redirect_to admin_bookings_path
    else
       render :edit
    end
  end

  def destroy
    @booking.destroy
    redirect_to admin_bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :number_of_guests, :first_name, :last_name, :date_of_birth, :country, :street, :house_number, :zip_code, :city, :phone_number, :email, :email_confirmation)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
