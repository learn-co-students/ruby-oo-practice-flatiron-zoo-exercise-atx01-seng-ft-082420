require 'pry'
class Zoo
    attr_accessor :name, :location
    @@all = []
    def initialize(name, location)
        @name = name
        @location = location
        self.class.all << self
    end

    def self.all
        @@all
    end 

    def animals
        Animal.all.select do |animal|
        animal.zoo == self
        end
    end

    def animal_species
        results = animals.map do |animal|
            animal.species
        end
        results.uniq!
    end

    def find_by_species(species)
        Animal.all.select do |animal|
            animal.species == species && animal.zoo == self
        end
    end

    def animal_nicknames
        self.animals.map do |animal|
            animal.nickname
        end
    end

    def self.find_by_location(zoo_location)
        self.all.select do |zoo|
            zoo.location == zoo_location
        end
    end
end

# binding.pry
# 0
