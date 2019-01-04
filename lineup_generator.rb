require_relative 'lib/game.rb'
require_relative 'lib/inning.rb'
require_relative 'lib/helper.rb'
require_relative 'lib/players.rb'

g = Game.new
get_innings(g)
#get the people who are available that night
roster = get_working_roster(FULL_ROSTER)
#create the kicking order
roster = create_bench_order(roster)
#export the basic version of the kicking order, which will be adjusted by hand
export_kicking_order(roster)
#set bench for each inning
set_benches(g, roster, roster.length)
#set the defense for each inning
set_defense(g, roster)
#exports csv file
export_defense(g, roster.length)
puts "Defense and kicking order exported. Good luck!"
