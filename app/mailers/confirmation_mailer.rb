class ConfirmationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.confirmation_mailer.new_confirmation.subject
  #

  #this new_confirmation method is like a controller for the email generator
  # it passes in the variables needed to generate the booking view.
  def new_confirmation(booking)
    @booking = booking

    mail to: @booking.email,
      subject: "Booking Confirmation for Casalverde"
  end


end
