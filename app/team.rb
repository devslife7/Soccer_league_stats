class Team
    attr_accessor :name
    attr_reader :city, :country

    @@all = []

    def initialize(name, city, country)
      @name = name
      @city = city
      @country = country
      @@all << self
    end

    def self.all
        @@all
    end
end