class Booking < ApplicationRecord
  #validates :first_name, :last_name, :date_of_birth, :country, :street, :house_number, :zip_code, :city, :phone_number, :email, presence: true

def self.casal
  where(origin: 0)
end

def self.bookingcom
  where(origin: 1)
end

def self.micazu
  where(origin: 2)
end

  # validates :first_name, format: { with: /\A[a-zA-Z]\z/,
  #   message: "only allows letters" }
  # validates :last_name, format: { with: /\A[a-zA-Z]\z/,
  #   message: "only allows letters" }
  # validates :street, format: { with: /\A[a-zA-Z]\z/,
  #   message: "only allows letters" }
  # validates :house_number, numericality: {
  #   only_integer: true,
  #   greater_than: 0,
  #   message: "only allows numbers"
  # }
  # validates :city, format: { with: /\A[a-zA-Z]\z/,
  #   message: "only allows letters" }
  # validates :phone_number, numericality: {
  #   only_integer: true,
  #   message: "only allows numbers"
  # }

 # Booking valid methods

 # should return false if the start date is not at least 4 days from now
 # works
  def season
   current_season_id = ""
   start_date = self.start_date
   @seasons = Season.all
   @seasons.each do |season|
     if (season.start_date <= start_date) && (season.end_date > start_date)
       then current_season_id = season.id
     end
   end

   current_season_id
  end


  def timely_start_date?
    if self.start_date - Date.today > 4
      return true
    else
      return false
    end
  end

  def minimum_stay?
    #should return true if the minimum stay is correct
    season = self.season
    minimum_stay = Season.find(season).min_stay
    return false unless self.number_of_nights >= minimum_stay
  end
 #works

# should return true if it is not in high season or if the booking runs from
# saturday to a saturday
  def valid_changeover?
   season = self.season
   changeover = Season.find(season).changeover
   days = self.start_date.wday + self.end_date.wday
   # date.wday returns a value (0-6), sunday is 0, saturday = 6
   # if start_date.wday + end_date.wday = 12 both days are saturday
    if (changeover == false) || (days == 12)
      return true
    else
      return false
    end
  end

  def available?
   # returns false if there is an overlapping booking
   start_date = self.start_date
   end_date = self.end_date
   bookings = Booking.all
   bookings.each do |booking|
     if (booking.start_date < start_date) && (booking.end_date > start_date)
       return false
     else
       return true
     end
   end
  end

  def valid_booking?
    if self.available? && self.valid_changeover? && self.minimum_stay? && self.timely_start_date? == true
      return true
    else
      return false
    end
  end


 def extra_persons
   #returns the amount of guests over 8
   extra_persons = 0
   people = self.number_of_guests
    if people > 8
      extra_persons = people - 8
      return extra_persons
    else extra_persons = 0
    end
  end

  def base_price
   number_of_nights = self.end_date - self.start_date
   season = self.season
   nightly_price = Season.find(season).nightly_cost.to_f
   base_price = number_of_nights * nightly_price
   base_price
  end



  def extra_guest_price
   season = self.season
   extra_guests = self.extra_persons
   extra_guest_price_per_night = Season.find(season).extra_person_night
   extra_guest_price = extra_guests * extra_guest_price_per_night
   extra_guest_price.to_f
  end



  def deposit
   season = self.season
   deposit = Season.find(season).deposit
   deposit.to_f
  end

  def calculate_total_price
   total_price = self.base_price + self.extra_guest_price + self.deposit
   total_price
  end

   def self.array_of_days
     @bookings = Booking.all
     @all_days = []
     @bookings.each do |booking|
       date_range = booking.start_date..booking.end_date
       all_days = date_range.map { |d| Date.new(d.year, d.month, d.day, 1) }.uniq
       @all_days = all_days.map { |d| d.strftime '%Y-%m-%d' }
     end
    return @all_days
   end

  def full_name
    "#{first_name} #{last_name}"
  end

  def booking_dates
    start_date.to_s + " till " + end_date.to_s
  end

end
