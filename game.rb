class Game

  def initialize
    @score = self.score
  end

  def roll(pins)
    raise(ArgumentError,"Roll must be an integer",caller) unless pins.is_a?(Integer) 
    @score += pins
  end

  def score
    @score ||= 0
  end

end
