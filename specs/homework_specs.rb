require('minitest/autorun')
require_relative('../homework.rb')

class FunctionsTest < MiniTest::Test

# Exercise A

# Given the following data structure:
# stops_array = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]

# Complete these tasks:
# 1. Add "Edinburgh Waverley" to the end of the array

  def test_add_stop_to_end__waverly()
    stops_array = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]
    result = add_stop_to_end(stops_array, "Edinburgh Waverly")
    assert_equal([ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket", "Edinburgh Waverly" ], result)
  end

  def test_add_stop_to_end__bananas()
    stops_array = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]
    result = add_stop_to_end(stops_array, "Bananas")
    assert_equal([ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket", "Bananas" ], result)
  end

# 2. Add "Glasgow Queen St" to the start of the array

  def test_add_stop_to_start__glasgow()
    stops_array = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]
    result = add_stop_to_start(stops_array, "Glasgow Queen St")
    assert_equal([ "Glasgow Queen St", "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ], result)
  end

  def test_add__stop_to_start__bananas()
    stops_array = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]
    result = add_stop_to_start(stops_array, "Bananas")
    assert_equal([ "Bananas", "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ], result)
  end

# 3. Add "Polmont" at the appropriate point (between "Falkirk High" and "Linlithgow")

  def test_add_stop_to_point__default_order()
    stops_array = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]
    result = add_stop_to_point(stops_array, "Falkirk High", "Polmont")
    assert_equal([  "Croy", "Cumbernauld", "Falkirk High", "Polmont", "Linlithgow", "Livingston", "Haymarket" ], result)
  end

  def test_add_stop_to_point__different_order()
    stops_array = [ "Croy", "Cumbernauld", "Livingston", "Haymarket", "Falkirk High", "Linlithgow" ]
    result = add_stop_to_point(stops_array, "Falkirk High", "Polmont")
    assert_equal([ "Croy", "Cumbernauld", "Livingston", "Haymarket", "Falkirk High", "Polmont", "Linlithgow" ], result)
  end

  def test_add_stop_to_point__different_stops_array()
    stops_array = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]
    result = add_stop_to_point(stops_array, "Cumbernauld", "Glasgow Queen St")
    assert_equal([ "Croy", "Cumbernauld", "Glasgow Queen St", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ], result)
  end

# 4. Work out the index position of "Linlithgow"

  # def test_find_index_of_item__livingston()
  #   stops_array = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]
  #   result = find_index_of_item("Livingston")
  #   assert_equal(4, result)
  # end
end
