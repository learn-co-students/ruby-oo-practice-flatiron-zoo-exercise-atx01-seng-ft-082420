class Zoo
    attr_reader :name, :location, :nickname

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
        Animal.all.select do |animals|
            animals.zoo == self.name
        end
    end

    def find_by_species(species)
        animals.select do |animals|
            animals.species == species
        end
    end

    def animal_nicknames
        self.animals.collect do |n_names|
            n_names.nickname
        end
    end

    def self.find_zoo_by_location(zoo_location)
        Zoo.all.select do |zoo|
            zoo.location == zoo_location
        end
    end


end
