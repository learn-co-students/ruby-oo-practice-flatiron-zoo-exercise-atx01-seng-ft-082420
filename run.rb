require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


texas_zoo = Zoo.new('Texas Zoo', 'Texas')
florida_zoo = Zoo.new('Florida Zoo', 'Florida')
cali_zoo = Zoo.new('California Zoo', 'California')
second_florida_zoo = Zoo.new('Second Florida Zoo', 'Florida')

hermione = Animal.new('Lion', 'Hermione', 250, texas_zoo)
hagrid = Animal.new('Octopus', 'Hagrid', 250, florida_zoo)
harry = Animal.new('Tiger', 'Harry', 220, florida_zoo)
ron = Animal.new('Bear', 'Ron', 350, cali_zoo)
ron2 = Animal.new('Bear', 'Ron2', 360, cali_zoo)



binding.pry
puts "done"
