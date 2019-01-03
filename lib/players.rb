class Player
  attr_reader :name, :gender, :positions, :good_kicker
  def initialize
    @name = nil
    @gender = nil
    @positions = []
    @good_kicker = false
  end
end

class Dan < Player
  def initialize
    @name = 'Dan'
    @gender = 'm'
    @positions = [:lc,:rc,:lr,:l,:r,:pitcher,:rr,:third,:first,:second,:catcher]
    @good_kicker = true
  end
end

class Jamie < Player
  def initialize
    @name = 'Jamie'
    @gender = 'f'
    @positions = [:l,:r,:lc,:rc,:rr,:pitcher,:first,:third,:catcher,:second,:lr]
    @good_kicker = true
  end
end

class Luis < Player
  def initialize
    @name = 'Luis'
    @gender = 'm'
    @positions = [:l,:r,:lc,:rc,:pitcher,:rr,:third,:first,:second,:catcher,:lr]
    @good_kicker = true
  end
end

class Maria < Player
  def initialize
    @name = 'Maria'
    @gender = 'f'
    @positions = [:second,:rr,:first,:third,:catcher,:pitcher,:l,:r,:lr,:lc,:rc]
    @good_kicker = false
  end
end

class Jon < Player
  def initialize
    @name = 'Jon'
    @gender = 'm'
    @positions = [:lr,:lc,:rc,:l,:r,:rr,:pitcher,:first,:third,:second,:catcher]
    @good_kicker = true
  end
end

class Sara < Player
  def initialize
    @name = 'Sara J'
    @gender = 'f'
    @positions = [:l,:lc,:rc,:r,:rr,:third,:first,:second,:pitcher,:catcher,:lr]
    @good_kicker = true
  end
end

class Cam < Player
  def initialize
    @name = 'Cam'
    @gender = 'm'
    @positions = [:lr,:lc,:rc,:l,:r,:rr,:pitcher,:first,:third,:second,:catcher]
    @good_kicker = true
  end
end

class Leslie < Player
  def initialize
    @name = 'Leslie'
    @gender = 'f'
    @positions = [:l,:r,:lc,:rc,:rr,:pitcher,:first,:third,:catcher,:second,:lr]
    @good_kicker = true
  end
end

class Dom < Player
  def initialize
    @name = 'Dom'
    @gender = 'm'
    @positions = [:lr,:lc,:rc,:l,:r,:rr,:pitcher,:first,:third,:second,:catcher]
    @good_kicker = true
  end
end

class Kenny < Player
  def initialize
    @name = 'Kenny'
    @gender = 'm'
    @positions = [:second,:third,:rr,:catcher,:first,:l,:r,:lc,:rc,:lr,:pitcher]
    @good_kicker = false
  end
end

class Felicia < Player
  def initialize
    @name = 'Felicia'
    @gender = 'f'
    @positions = [:first,:third,:rr,:pitcher,:catcher,:second,:l,:r,:lc,:rc,:lr]
    @good_kicker = false
  end
end

class Sarah < Player
  def initialize
    @name = 'Sarah B'
    @gender = 'f'
    @positions = [:first,:third,:l,:r,:second,:lc,:rc,:rr,:catcher,:pitcher,:lr]
    @good_kicker = false
  end
end

class Jay < Player
  def initialize
    @name = 'Jay'
    @gender = 'm'
    @positions = [:l,:r,:lc,:rc,:rr,:pitcher,:lr,:first,:third,:second,:catcher]
    @good_kicker = false
  end
end

class Xtina < Player
  def initialize
    @name = 'Xtina'
    @gender = 'f'
    @positions = [:first,:second,:third,:pitcher,:catcher,:rr,:l,:r,:lc,:rc,:lr]
    @good_kicker = false
  end
end

class Kristen < Player
  def initialize
    @name = 'Kristen'
    @gender = 'f'
    @positions = [:first,:pitcher,:second,:third,:catcher,:rr,:l,:r,:lc,:rc,:lr]
    @good_kicker = false
  end
end

class Sharon < Player
  def initialize
    @name = 'Sharon'
    @gender = 'f'
    @positions = [:second,:third,:catcher,:rr,:first,:l,:r,:lc,:rc,:pitcher,:lr]
    @good_kicker = false
  end
end

class Flavia < Player
  def initialize
    @name = 'Flavia'
    @gender = 'f'
    @positions = [:second,:third,:catcher,:rr,:first,:l,:r,:lc,:rc,:pitcher,:lr]
    @good_kicker = false
  end
end

class Joe < Player
  def initialize
    @name = 'Joe'
    @gender = 'm'
    @positions = [:l,:r,:lc,:rc,:rr,:pitcher,:lr,:first,:third,:second,:catcher]
    @good_kicker = true
  end
end

class Steven < Player
  def initialize
    @name = 'Steven'
    @gender = 'm'
    @positions = [:l,:r,:lc,:rc,:rr,:pitcher,:lr,:first,:third,:second,:catcher]
    @good_kicker = false
  end
end
