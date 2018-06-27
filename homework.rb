
stops_array = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]

# Complete these tasks:
# 1. Add "Edinburgh Waverley" to the end of the array
def add_stop_to_end(stops_array, new_stop)
  result = stops_array.push(new_stop)
  return result
end

# 2. Add "Glasgow Queen St" to the start of the array
def add_stop_to_start(stops_array, new_stop)
  result = stops_array.unshift(new_stop)
  return result
end

# 3. Add "Polmont" at the appropriate point (between "Falkirk High" and "Linlithgow")
def add_stop_to_point(stops_array, stop_to_find, new_stop)
  index_of_stop= stops_array.index(stop_to_find)
  result = stops_array.insert((index_of_stop + 1), new_stop)
  return result
end

# 4. Work out the index position of "Linlithgow"
def find_index_of_stop(stops_array, stop_to_find)
  result = stops_array.index(stop_to_find)
  return result
end

# 5. Remove "Livingston" from the array using its name
def delete_stop_by_name(stops_array, stop_to_delete)
  stops_array.delete(stop_to_delete)
  return stops_array
end

# 6. Delete `"Cumbernauld"` from the array by index
def delete_stop_by_index(stops_array, stop_to_delete)
  index_of_stop = find_index_of_stop(stops_array, stop_to_delete)
  stops_array.delete_at(index_of_stop)
  return stops_array
end

# 7. How many stops there are in the array?
def count_stops_in_array(stops_array)
  result = stops_array.length()
  return result
end

# 8. How many ways can we return "Falkirk High" from the array?
=begin
1. by providing the index
2. by providing the name
3. by calculating the start of the array plus x indices to get to Falkirk High
4. by calculating the end of the array minus x indices to get to Falkirk High
5. via a for loop
6. via a while loop
7. via select method
8. via array.delete(stop)
9. probably other ways too ;-)
=end

# 9. Reverse the positions of the stops in the array
def reverse_stops_in_array(stops_array)
  result = stops_array.reverse()
  return result
end

# 10. Print out all the stops using a for loop
print "Ex A, step 10: "
for stop in stops_array
  print stop
end

# Exercise B

# Given the following data structure:

users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :lottery_numbers => [6, 12, 49, 33, 45, 20],
    :home_town => "Stirling",
    :pets => [
    {
      :name => "fluffy",
      :species => "cat"
    },
    {
      :name => "fido",
      :species => "dog"
    },
    {
      :name => "spike",
      :species => "dog"
    }
  ]
  },
  "Erik" => {
    :twitter => "eriksf",
    :lottery_numbers => [18, 34, 8, 11, 24],
    :home_town => "Linlithgow",
    :pets => [
    {
      :name => "nemo",
      :species => "fish"
    },
    {
      :name => "kevin",
      :species => "fish"
    },
    {
      :name => "spike",
      :species => "dog"
    },
    {
      :name => "rupert",
      :species => "parrot"
    }
  ]
  },
  "Avril" => {
    :twitter => "bridgpally",
    :lottery_numbers => [12, 14, 33, 38, 9, 25],
    :home_town => "Dunbar",
    :pets => [
      {
        :name => "monty",
        :species => "snake"
      }
    ]
  }
}

# Complete these tasks:
# 1. Get Jonathan's Twitter handle (i.e. the string `"jonnyt"`)
p users["Jonathan"][:twitter]
# 2. Get Erik's hometown
p users["Erik"][:home_town]
# 3. Get the array of Erik's lottery numbers
p users["Erik"][:lottery_numbers]
# 4. Get the type of Avril's pet Monty
p users["Avril"][:pets][0][:species]
# 5. Get the smallest of Erik's lottery numbers
p users["Erik"][:lottery_numbers].min()
# 6. Return an array of Avril's lottery numbers that are even

# 7. Erik is one lottery number short! Add the number `7` to be included in his lottery numbers
users["Erik"][:lottery_numbers].push(7)
# 8. Change Erik's hometown to Edinburgh
users["Erik"][:home_town] = "Edinburgh"
# 9. Add a pet dog to Erik called "Fluffy"
users["Erik"][:pets].push({:name => "Fluffy", :species => "dog"})
# 10. Add another person to the users hash
users["Vicky"] = {
  :twitter => "herbivix",
  :lottery_numbers => [5, 11, 14, 29, 40, 45],
  :home_town => "Invergordon",
  :pets => [
    {
      :name => "alfie",
      :species => "dog"
    },
    {
      :name => "sarah",
      :species => "guinea pig"
    },
    {
      :name => "duck",
      :species => "guinea pig"
    }
  ]
}

# Exercise C
# Given the following data structure:

united_kingdom = [
  {
    name: "Scotland",
    population: 5295000,
    capital: "Edinburgh"
  },
  {
    name: "Wales",
    population: 3063000,
    capital: "Swansea"
  },
  {
    name: "England",
    population: 53010000,
    capital: "London"
  }
]

# Complete these tasks:

# 1. Change the capital of Wales from `"Swansea"` to `"Cardiff"`.

# 2. Create a Hash for Northern Ireland and add it to the `united_kingdom` array (The capital is Belfast, and the population is 1,811,000).
# 3. Use a loop to print the names of all the countries in the UK.
# 4. Use a loop to find the total population of the UK.
