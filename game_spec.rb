require './game.rb'

describe Game do

  before(:each) do
    @game = Game.new
  end

  describe "#score" do

    it "returns 0 for all gutter game" do
      20.times { @game.roll(0) }
      @game.score.should == 0
    end

    it "returns 0 before rolls" do
      @game.score.should == 0
    end

    it "returns correct score after completed game" do
      20.times { @game.roll(1) }
      @game.score.should == 20
    end

  end

  describe "#roll" do

    it "accepts integers" do
      expect{@game.roll(1)}.to_not raise_error
    end

    it "raises an Exception if a non-integer is passed" do
      expect{@game.roll('a')}.to raise_error(ArgumentError)
    end

    it "changes the Game's score" do
      n = 1
      expect{@game.roll(n)}.to change{@game.score}.by(n)
    end

    it "adds the score to a frame" do
      n = 3
      expect{@game.roll(n)}.to change{@game.frames.size}.by(1)
      @game.frames.last.should == n
    end

  end

  describe "#frames" do

    it "returns an array of scores" do
      @game.frames.should be_a Array
    end

  end

end
