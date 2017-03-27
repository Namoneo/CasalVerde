class EmailProcessor
  def initialize(email)
    @email = email
  end

  def process
    # all of your application-specific code here - creating models,
    # processing reports, etc

    # Here's an example of model creation
    user = User.find_by_email(@email.from[:email])
    user.posts.create!(
      subject: @email.subject,
      body: @email.body
    )
  end

  def parse_body
    body = @email.body
  end

#   require 'nokogiri'
#
# file = File.open('test_mail.html')
# html = Nokogiri::HTML(file)
#
# arrival_date = html.at_css('.start_date').text
# departure_date = html.at_css('.end_date').text
# number_of_nights = html.at_css('.number_of_nights').text
# number_of_guests = html.at_css('.number_of_guests').text
# first_name = html.at_css('.number_of_guests').text
# last_name = html.at_css('.last_name').text
# house_number = html.at_css('.house_number').text
# street = html.at_css('.street').text
# zip_code = html.at_css('.zip_code').text
# city = html.at_css('.city').text
# country = html.at_css('.country').text
# phonenumber = html.at_css('.phone_number').text
# email = html.at_css('.email').text
end
