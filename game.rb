class Game
  attr_accessor :frames,:score

  def initialize
    @score = 0
    @frames = []
  end

  def roll(pins)
    raise(ArgumentError,"Roll must be an integer",caller) unless pins.is_a?(Integer) 
    @score += pins
  end

end
