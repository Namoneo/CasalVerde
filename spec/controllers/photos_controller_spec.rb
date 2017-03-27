require 'rails_helper'

RSpec.describe PhotosController, type: :controller do
  it { should route(:get, '/photos/new').to(action: :new) }
  it { should route(:post, '/photos').to(action: :create) }
  it { should route(:delete, '/photos/1').to(action: :destroy, id: 1) }
  it { should route(:patch, '/photos/1').to(action: :update, id:1) }
  
end
