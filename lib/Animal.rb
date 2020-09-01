require 'pry'
class Animal
    attr_reader :nickname, :zoo
    attr_accessor :weight, :species
    @@all = []
    def initialize(species, weight, nickname)
        @species = species 
        @weight = weight 
        @nickname = nickname 
        self.class.all << self
    end 

    def self.find_by_species(species)
        Animal.all.select do |animal|
            animal.species == species
        end 
    end
    
    def self.all 
        @@all 
    end 
    #binding.pry
end
