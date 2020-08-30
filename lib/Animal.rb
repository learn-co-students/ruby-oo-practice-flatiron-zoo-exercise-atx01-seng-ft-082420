class Animal
    attr_reader :zoo
    attr_accessor :species, :weight, :nickname
    @@all = []
    def initialize(species, weight, nickname, zoo)
        @species = species
        @weight = weight
        @nickname = nickname
        @zoo = zoo


        self.class.all << self
    end
     
    def self.all
        @@all
    end
    
    def self.zoo
        zoo.name
    end

    def find_by_species
        Animal.all.select do |animal|
            animal.species == self.species
        end
    end
end
