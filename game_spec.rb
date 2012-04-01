require './game.rb'

describe Game do
  describe "#score" do

    it "returns 0 for all gutter game" do
      game = Game.new
      20.times { game.roll(0) }
      game.score.should == 0
    end

    it "returns 0 before rolls" do
      game = Game.new
      game.score.should == 0
    end

  end
end
