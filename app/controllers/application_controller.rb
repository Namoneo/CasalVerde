class ApplicationController < ActionController::Base
  layout "creative"
  protect_from_forgery with: :exception
end
