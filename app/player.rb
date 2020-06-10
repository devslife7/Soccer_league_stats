class Player
    attr_accessor :name

    @@all = []

    def initialize(name)
      @name = name
      @@all << self
    end

    def self.all
        @@all
    end

    def play_season(team, year, goals)
        Season.new(self, team, year, goals)
    end

    def seasons
        Season.all.select do |season|
            season.player == self
        end
    end

    def player_teams
        seasons.collect do |season|
            season.team
        end.uniq
    end

    def total_goals
        total_goals = 0
        seasons.collect do |season|
            total_goals += season.goals
        end
        total_goals
    end
end