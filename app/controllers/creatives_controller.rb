class CreativesController < ApplicationController
# included the next line in every controller for the styling
layout "creative"

  def index
    @question = Question.new
    @photos = Photo.all
    @booking = Booking.new
    @contents = Content.all
  end

  def show
  end

end
