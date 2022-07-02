require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"


@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Cillian", last_name: "Smith", hourly_rate: 125)
@store2.employees.create(first_name: "Vincent", last_name: "Smith", hourly_rate: 125)
@store1.employees.create(first_name: "Val", last_name: "Richards", hourly_rate: 55)
@store1.employees.create(first_name: "Mike", last_name: "Zorn", hourly_rate: 45)
@store2.employees.create(first_name: "Chad", last_name: "Nunn", hourly_rate: 55)
@store2.employees.create(first_name: "Jay", last_name: "Dorsey", hourly_rate: 39)

@employee = Employee.where(store: 2).count
puts @employee