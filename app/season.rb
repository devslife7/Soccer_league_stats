class Season
    attr_accessor :year
    attr_reader :player, :team, :goals

    @@all = []

    def initialize(player, team, year, goals)
        @year = year
        @player = player
        @team = team
        @goals = goals
        @@all << self
    end

    def self.all
        @@all
    end


end