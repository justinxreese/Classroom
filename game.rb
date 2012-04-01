class Game
  attr_accessor :frames,:score

  def initialize
    @score = 0
    @frames = []
  end

  def roll(pins)
    raise(ArgumentError,"Roll must be an integer",caller) unless pins.is_a?(Integer) 
    if !@frames.empty? and ((@frames.size == 10 and @frames.last.size < 3) or @frames.last.size < 2)
      frame = @frames.pop
    else
      frame = []
    end
    frame << pins
    @frames << frame
    @score += pins
  end

end
