class Game
  attr_accessor :frames,:score
  MAX_THROWS = 21

  def initialize
    @score = 0
    @frames = []
  end

  def roll(pins)
    raise(ArgumentError,"Roll must be an integer",caller) unless pins.is_a?(Integer) 
    raise(ArgumentError,"No more turns are allowed",caller) unless @frames.flatten.size < MAX_THROWS
    if !@frames.empty? and ((@frames.size == 10 and @frames.last.size < 3 and @frames.last.last == 10) or @frames.last.size < 2)
      frame = @frames.pop
    else
      frame = []
    end
    frame << pins
    @frames << frame
    @score += pins
  end

end
