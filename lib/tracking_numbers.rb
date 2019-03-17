require "tracking_numbers/version"
require "tracking_numbers/version"
require 'open-uri'
require 'nokogiri'
require 'pry'

require_relative "./tracking_numbers/version"
require_relative './tracking_numbers/cli'
require_relative './tracking_numbers/tracking'

module TrackingNumbers
  class Error < StandardError; end
  # Your code goes here...
end
