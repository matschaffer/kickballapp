require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  test "parses last name from full name" do
    trotter = Player.new(:name => "Trotter Cashion")
    assert_equal "Cashion", trotter.last_name
  end
end
