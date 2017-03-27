class Admin::BookingcomsController < Admin::BaseController
  require 'nokogiri'
  require 'open-uri'

  def index

    # Create an empty array
    @elements_sanitized = []

    html_data = open('http://www.nu.nl/entertainment').read
    nokogiri_object = Nokogiri::HTML(html_data)

    @css = nokogiri_object.css('a')
    @xpath  =  nokogiri_object.xpath('a')

    @css.each do |element|
      @elements_sanitized << element.text
    end

  end
end
