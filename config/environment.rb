# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# To be able to manipulate info from ics (calendars) files
require 'icalendar' 
require 'open-uri'