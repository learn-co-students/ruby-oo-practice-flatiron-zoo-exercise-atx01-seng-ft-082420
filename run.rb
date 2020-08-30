require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
z1 = Zoo.new("SD ZOO", "San Diego")
z2 = Zoo.new("LA ZOO", "Los Angeles")
z3 = Zoo.new("ZOO", "San Diego")

a1 = Animal.new("Y",18, "cat","LA ZOO")
a2 = Animal.new("D", 65, "Cayde", "SD ZOO")
a3 = Animal.new("D", 65, "Dex", "SD ZOO")
a4 = Animal.new("D", 65, "Benny", "SD ZOO")
a5 = Animal.new("Y", 65, "Lud", "LA ZOO")
binding.pry
puts "done"
