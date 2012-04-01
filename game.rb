class Game

  def initialize
    @score = self.score
  end

  def roll(pins)
    @score += pins
  end

  def score
    @score ||= 0
  end

end
