class Animal
    attr_reader :species, :nickname
    attr_accessor :weight, :zoo
    @@all = []
    def initialize(species, nickname, weight, zoo)
        @species = species
        @nickname = nickname
        @weight = weight
        @zoo = zoo
        self.class.all << self
    end

    def self.all
        @@all
    end

    def self.find_by_species(animal_species)
        self.all.select do |animal|
            animal.species == animal_species
        end
    end
end
