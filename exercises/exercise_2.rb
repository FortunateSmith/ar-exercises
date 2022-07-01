require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

store1 = Store.first
store2 = Store.second
puts store1.name
puts store2.name
store1.update(annual_revenue: 325000)
puts " The #{store1.name} store's annual revenue is $#{store1.annual_revenue}"
