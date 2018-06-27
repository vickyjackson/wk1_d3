require('minitest/autorun')
require_relative('../homework.rb')

class FunctionsTest < MiniTest::Test

# Exercise A

# Given the following data structure:
# stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]

# Complete these tasks:
# 1. Add "Edinburgh Waverley" to the end of the array

  def test_add_to_end__waverly()
    stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]
    result = add_to_end(stops, "Edinburgh Waverly")
    assert_equal([ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket", "Edinburgh Waverly" ], result)
  end

  def test_add_to_end__bananas()
    stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]
    result = add_to_end(stops, "Bananas")
    assert_equal([ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket", "Bananas" ], result)
  end

# 2. Add "Glasgow Queen St" to the start of the array

  def test_add_to_start__glasgow()
    stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]
    result = add_to_start(stops, "Glasgow Queen St")
    assert_equal([ "Glasgow Queen St", "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ], result)
  end

  def test_add_to_start__bananas()
    stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]
    result = add_to_start(stops, "Bananas")
    assert_equal([ "Bananas", "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ], result)
  end

# 3. Add "Polmont" at the appropriate point (between "Falkirk High" and "Linlithgow")

  def test_add_to_point__default_order()
    stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]
    result = add_to_point(stops, "Falkirk High", "Polmont")
    assert_equal([  "Croy", "Cumbernauld", "Falkirk High", "Polmont", "Linlithgow", "Livingston", "Haymarket" ], result)
  end

  def test_add_to_point__different_order()
    stops = [ "Croy", "Cumbernauld", "Livingston", "Haymarket", "Falkirk High", "Linlithgow" ]
    result = add_to_point(stops, "Falkirk High", "Polmont")
    assert_equal([ "Croy", "Cumbernauld", "Livingston", "Haymarket", "Falkirk High", "Polmont", "Linlithgow" ], result)
  end

  def test_add_to_point__different_stops()
    stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]
    result = add_to_point(stops, "Cumbernauld", "Glasgow Queen St")
    assert_equal([ "Croy", "Cumbernauld", "Glasgow Queen St", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ], result)
  end

end
