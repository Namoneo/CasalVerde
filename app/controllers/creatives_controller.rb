class CreativesController < ApplicationController
# included the next line in every controller for the styling
layout "creative"

  def index
    @question = Question.new
    @photos = Photo.all
    @booking = Booking.new
    @contents = Content.all
    @guestbooks = Guestbook.all
    @contents = Content.all
    @photos = Photo.all
  end

  def show
  end

end
