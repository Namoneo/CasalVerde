class Admin::BaseController < ApplicationController
  layout 'admin'
  before_action :require_login

  private
    def require_login
      if !user_signed_in? 
      redirect_to new_user_session_path, alert: "Please login first!"
      end
    end
end
