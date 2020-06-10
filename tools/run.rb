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

messi.play_season(barcelona, 2016, 37)
messi.play_season(barcelona, 2017, 34)
messi.play_season(barcelona, 2018, 34)

ronaldo.play_season(madrid, 2016, 29)
ronaldo.play_season(madrid, 2017, 27)
ronaldo.play_season(juve, 2018, 31)

suarez.play_season(barcelona, 2016, 35)
suarez.play_season(barcelona, 2017, 33)
suarez.play_season(barcelona, 2018, 33)

neymar.play_season(barcelona, 2016, 13)
neymar.play_season(psg, 2017, 19)
neymar.play_season(psg, 2018, 15)

higuain.play_season(madrid, 2012, 22)
higuain.play_season(juve, 2016, 24)
higuain.play_season(juve, 2017, 24)

puts 'Player knows its total goals'
puts messi.total_goals == 105
puts ronaldo.total_goals == 87

puts 'Player knows its teams'
puts higuain.player_teams.include?(juve)
puts higuain.player_teams.include?(madrid)

print neymar.player_teams

# binding.pry
