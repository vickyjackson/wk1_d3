require('minitest/autorun')
require_relative('../homework.rb')

class FunctionsTest < MiniTest::Test

# Exercise A

# Given the following data structure:
# stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]

# Complete these tasks:
# 1. Add "Edinburgh Waverley" to the end of the array

  def test_add_to_end_waverly()
    stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]
    result = add_to_end(stops, "Edinburgh Waverly")
    assert_equal([ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket", "Edinburgh Waverly" ], result)
  end

  def test_add_to_end_bananas()
    stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]
    result = add_to_end(stops, "Bananas")
    assert_equal([ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket", "Bananas" ], result)
  end

# 2. Add "Glasgow Queen St" to the start of the array

  def test_add_to_start_glasgow()
    stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]
    result = add_to_start(stops, "Glasgow Queen St")
    assert_equal([ "Glasgow Queen St", "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ], result)
  end

  def test_add_to_start_bananas()
    stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]
    result = add_to_start(stops, "Bananas")
    assert_equal([ "Bananas", "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ], result)
  end

end
