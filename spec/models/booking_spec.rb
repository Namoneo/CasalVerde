require 'rails_helper'

RSpec.describe Booking, type: :model do
it { should validate_presence_of(:first_name) }
it { should validate_presence_of(:last_name) }
it { should validate_presence_of(:date_of_birth) }
it { should validate_presence_of(:country) }
it { should validate_presence_of(:street) }
it { should validate_presence_of(:house_number) }
it { should validate_presence_of(:zip_code) }
it { should validate_presence_of(:city) }
it { should validate_presence_of(:phone_number) }
it { should validate_presence_of(:email) }


end
