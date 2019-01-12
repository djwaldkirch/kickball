class Player
  attr_accessor :name, :gender, :positions, :good_kicker
  def initialize(name, gender, positions, good_kicker)
    @name = name
    @gender = gender
    @positions = positions
    @good_kicker = good_kicker
  end
end

FULL_ROSTER = [Player.new('Dan','m',[:lc,:rc,:lr,:l,:r,:pitcher,:rr,:third,:first,:catcher],true),
               Player.new('Jamie','f',[:l,:r,:lc,:rc,:rr,:pitcher,:first,:third,:catcher,:lr],true),
               Player.new('Luis','m',[:l,:r,:lc,:rc,:pitcher,:rr,:third,:first,:catcher,:lr],true),
               Player.new('Maria','f',[:rr,:first,:third,:catcher,:pitcher,:l,:r,:lr,:lc,:rc],false),
               Player.new('Jon','m',[:lr,:lc,:rc,:l,:r,:rr,:pitcher,:first,:third,:catcher],true),
               Player.new('Sara J','f',[:l,:lc,:rc,:r,:rr,:third,:first,:pitcher,:catcher,:lr],true),
               Player.new('Cam','m',[:lr,:lc,:rc,:l,:r,:rr,:pitcher,:first,:third,:catcher],true),
               Player.new('Leslie','f',[:l,:r,:lc,:rc,:rr,:pitcher,:first,:third,:catcher,:lr],true),
               Player.new('Dom','m',[:lr,:lc,:rc,:l,:r,:rr,:pitcher,:first,:third,:catcher],true),
               Player.new('Kenny','m',[:third,:rr,:catcher,:first,:l,:r,:lc,:rc,:lr,:pitcher],false),
               Player.new('Felicia','f',[:first,:third,:rr,:pitcher,:catcher,:l,:r,:lc,:rc,:lr],false),
               Player.new('Sarah B','f',[:first,:third,:l,:r,:lc,:rc,:rr,:catcher,:pitcher,:lr],false),
               Player.new('Jay','m',[:l,:r,:lc,:rc,:rr,:pitcher,:lr,:first,:third,:catcher],false),
               Player.new('Xtina','f',[:first,:third,:pitcher,:catcher,:rr,:l,:r,:lc,:rc,:lr],false),
               Player.new('Kristen','f',[:first,:pitcher,:third,:catcher,:rr,:l,:r,:lc,:rc,:lr],false),
               Player.new('Sharon','f',[:third,:catcher,:rr,:first,:l,:r,:lc,:rc,:pitcher,:lr],false),
               Player.new('Flavia','f',[:third,:catcher,:rr,:first,:l,:r,:lc,:rc,:pitcher,:lr],false),
               Player.new('Joe','m',[:l,:r,:lc,:rc,:rr,:pitcher,:lr,:first,:third,:catcher],true),
               Player.new('Steven','m',[:l,:r,:lc,:rc,:rr,:pitcher,:lr,:first,:third,:catcher],false)]
