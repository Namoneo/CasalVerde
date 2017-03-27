require 'rails_helper'

RSpec.describe Admin::BookingsController, type: :controller do

  it { should route(:get, '/admin/bookings').to(action: :index) }
  it { should route(:post, '/admin/bookings').to(action: :create) }

  it { should route(:get, '/admin/bookings/new').to(action: :new) }
  it { should route(:get, '/admin/bookings/1/edit').to(action: :edit, id:1) }
  it { should route(:patch, '/admin/bookings/1').to(action: :update, id:1) }
  it { should route(:delete, '/admin/bookings/1').to(action: :destroy, id:1) }


   it { should use_before_action(:set_booking)}

end
