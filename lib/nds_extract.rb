$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
total_grosses = 0 
index = 0
  while index < director_data[:movies].count do
  total_grosses += director_data[:movies][index][:worldwide_gross]
  index += 1
  end
return total_grosses
end





# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
result = {}
row_index = 0
  while row_index < nds.length do
  result[nds[row_index][:name]] = gross_for_director(nds[row_index])
  row_index += 1
  end
  return result
  
end
