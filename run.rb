require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
tiger = Animal.new("tiger", 500, "meowmers")
bear = Animal.new("bear", 350, "osito")
seal = Animal.new("seal", 15, "lucille")
penguin = Animal.new("penguin", 7, "peppy")

austin = Zoo.new("Austin Zoo", "Austin")
dallas = Zoo.new("Dallas Zoo", "Dallas")

binding.pry
puts "done"
