class Season
    attr_accessor :year
    attr_reader :player, :team, :goals

    @@all = []
    @@all_years = []

    def initialize(player, team, year, goals)
        @year = year
        @player = player
        @team = team
        @goals = goals
        @@all << self
        @@all_years << year
    end

    def self.all
        @@all
    end

    def self.total_goals_per_year(year)
        seasons_array = self.all.select {|season| season.year == year}
        seasons_array.collect {|season| season.goals}.sum
    end

    def self.avg_total_goals_per_season
        all_years = @@all_years.uniq
        total_goals = self.all.collect{|season| season.goals}.sum
        return total_goals.to_f/all_years.length
    end


end