require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require_relative 'helpers/test_utilities_helper'

class ActiveSupport::TestCase
  include TestUtiltiesHelper
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
