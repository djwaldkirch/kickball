require 'csv'
require_relative 'players.rb'

def get_innings(game)
  puts "How many innings do you want to plan?"
  no_of_innings = gets.chomp.to_i
  #add those innings to the game object
  no_of_innings.times do |x|
    game.innings << Inning.new
  end
end

def get_working_roster(roster)
  working_roster = []
  roster.each do |player|
    puts "Is #{player.name} coming? y or n:"
    coming = gets.chomp
    working_roster << player if coming == 'y'
  end
  return working_roster
end

def create_bench_order(players)
  kicking_order = []
  guys = []
  girls = []
  players.each do |player|
    if player.gender == 'f'
      girls << player
    else
      guys << player
    end
  end



  if guys.length > girls.length
    bigger = guys
    smaller = girls
  elsif girls.length > guys.length
    bigger = girls
    smaller = guys
  elsif guys.length == girls.length
    kicking_order = guys.zip(girls).compact.flatten
    return kicking_order
  end

  (smaller.length).times do |x|
    kicking_order << bigger[0]
    bigger.shift
    kicking_order << smaller[0]
    smaller.shift
  end

  index = 0
  while bigger.any?
    kicking_order.insert(index, bigger[0])
    bigger.shift
    index += 3
  end
  return kicking_order
end

def set_benches(game, bench_order, number_of_players)
  bench_no = number_of_players - 11
  game.innings.each do |inning|
    bench_no.times do
      player = bench_order[0]
      inning.bench << player
      bench_order.shift
      bench_order << player
    end
  end
end

def set_defense(game, players)
  game.innings.each do |inning|
    #get the people actually in
    playing = players - inning.bench
    #scramble the list so that it switches up who gets their first preference of position
    players.shuffle!
    #for each player playing,
    playing.each do |player|
      #initialize some states
      index = 0
      position_set = false
      #while the player is still unassigned
      while position_set == false
        #check the current position choice and compare it to the defense
        #if the defensive position is unfilled, fill it and say that the player is now assigned.
        if inning.defense[(player.positions[index])] == nil
          inning.defense[(player.positions[index])] = player.name
          position_set = true
        #or else, move to the next most preferred position and try again
        else
          index += 1
        end
      end
    end
  end
end

def export_defense(game, no_of_players)
  header = [" "]
  pitcher_row = ["P"]
  catcher_row = ["C"]
  first_row = ["1"]
  second_row = ["2"]
  third_row = ["3"]
  lr_row = ["LR"]
  rr_row = ["RR"]
  l_row = ["L"]
  lc_row = ["LC"]
  rc_row = ["RC"]
  r_row = ["R"]
  rows = [header,pitcher_row,catcher_row,first_row,second_row,third_row,lr_row,rr_row,l_row,lc_row,rc_row,r_row]
  index = 0
  bench_index = 0
  game.innings.each do |inning|
    index += 1
    header << index
    pitcher_row << inning.defense[:pitcher]
    catcher_row << inning.defense[:catcher]
    first_row << inning.defense[:first]
    second_row << inning.defense[:second]
    third_row << inning.defense[:third]
    lr_row << inning.defense[:lr]
    rr_row << inning.defense[:rr]
    l_row << inning.defense[:l]
    lc_row << inning.defense[:lc]
    rc_row << inning.defense[:rc]
    r_row << inning.defense[:r]
  end
  CSV.open("defense.csv", "w") do |csv|
    rows.each do |row|
      csv << row
    end
    csv << [" "]

    bench_index = 0
    (no_of_players - 11).times do
      array = [" "]
      game.innings.each do |inning|
        array << inning.bench[bench_index].name
      end
      csv << array
      bench_index += 1
    end
  end
end

def export_kicking_order(players)
  header = ["Kicking"]
  CSV.open("kicking_order.csv", "w") do |csv|
    csv << header
    players.each do |player|
      array = [player.name]
      csv << array
    end
  end
end
