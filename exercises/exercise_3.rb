require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

store3 = Store.third
puts store3.name
store3.destroy
puts Store.count
