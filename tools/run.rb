require_relative '../config/environment.rb'

messi = Player.new("Leonel Messi")
ronaldo = Player.new("Cristano Ronaldo")
suarez = Player.new("Luis Suarez")
neymar = Player.new("Neymar Jr.")
# mbappe = Player.new("Mbappe")
# hazard = Player.new("Edden Hazard")
higuain = Player.new("Higuain")

barcelona = Team.new("Barcelona FC", "Barcelona", "Spain")
madrid = Team.new("Real Madrid", "Madrid", "Spain")
psg = Team.new("Paris Saint Germain", "Paris", "France")
juve = Team.new("Juventus", "Turin", "Italy")

messi.play_season(barcelona, 2015, 34)
messi.play_season(barcelona, 2016, 37)
messi.play_season(barcelona, 2017, 34)
messi.play_season(barcelona, 2018, 34)
messi.play_season(barcelona, 2012, 40)

ronaldo.play_season(madrid, 2015, 27)
ronaldo.play_season(madrid, 2016, 29)
ronaldo.play_season(madrid, 2017, 27)
ronaldo.play_season(juve, 2018, 31)
ronaldo.play_season(madrid, 2012, 35)

suarez.play_season(barcelona, 2015, 38)
suarez.play_season(barcelona, 2016, 35)
suarez.play_season(barcelona, 2017, 33)
suarez.play_season(barcelona, 2018, 33)
suarez.play_season(barcelona, 2012, 17)

neymar.play_season(barcelona, 2015, 18)
neymar.play_season(barcelona, 2016, 13)
neymar.play_season(psg, 2017, 19)
neymar.play_season(psg, 2018, 15)
neymar.play_season(psg, 2012, 12)

higuain.play_season(madrid, 2015, 28)
higuain.play_season(madrid, 2012, 22)
higuain.play_season(juve, 2016, 24)
higuain.play_season(juve, 2017, 24)
higuain.play_season(juve, 2018, 14)

puts 'Player knows its total goals'
puts messi.total_goals == 105
puts ronaldo.total_goals == 87

puts 'Player knows its teams'
puts higuain.player_teams.include?(juve)
puts higuain.player_teams.include?(madrid)

# print neymar.player_teams

puts "team knows its players"
puts barcelona.players.include?(neymar)
puts !barcelona.players.include?(ronaldo)
puts barcelona.players.include?(messi)

puts "team knows how many goals it scored each season"
puts barcelona.goals_scored_by_year(2016) == 85

puts "can find total goals scored each year accross leagues"
puts Season.total_goals_per_year(2011)

puts "can find the average total goals per season"
puts Season.avg_total_goals_per_season


# binding.pry
