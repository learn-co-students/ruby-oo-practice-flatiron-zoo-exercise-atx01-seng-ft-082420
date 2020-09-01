require 'pry'
class Zoo
    attr_reader :name, :location
    @@all = []
    def initialize(name, location)
        @name = name
        @location = location 
        self.class.all << self
    end

    def animals
        Animal.all.select do |a|
            a.zoo == self 
        end 
    end 

    def animal_species
        self.animals.collect do |a|
            a.species.uniq 
        end 
    end
    
    def find_by_species(species)
        self.animals.select do |a|
            a.species == species
        end 
    end

    def animal_nicknames
        self.animals.collect do |a|
            a.nickname 
        end 
    end 

    def self.find_by_location(location)
        self.all.select do |z| 
            z.location == location 
        end 
    end 

    def self.all
        @@all
    end 
end
