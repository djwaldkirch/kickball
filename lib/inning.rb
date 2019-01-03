class Inning
  attr_accessor :defense, :bench
  def initialize
    @defense = {pitcher: nil, catcher: nil, first: nil, second: nil, third: nil,
                lr: nil, rr: nil, l: nil, lc: nil, rc: nil, r: nil}
    @bench = []
  end
end
