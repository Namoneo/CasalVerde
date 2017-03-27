require 'rails_helper'

RSpec.describe Admin::BaseController, type: :controller do
  it { should use_before_action(:require_login) }
end
