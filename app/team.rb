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

    def seasons
      Season.all.select do |season|
          season.team == self
      end
    end

    def players
      seasons.collect {|season| season.player}.uniq
    end

    def goals_scored_by_year(year)
      #search through team.seasons and select the ones from that year
      #pulls out the player goals
      #sums up the goals array
      # seasons_array = seasons.select {|season| season.year == year}
      # seasons_array.collect {|season| season.goals}.sum
      goals_array = []
      seasons.each do |season|
        if season.year == year
          goals_array << season.goals
        end
      end
      goals_array.sum
    end 
end