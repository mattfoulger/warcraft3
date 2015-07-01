require_relative 'spec_helper'

describe SiegeEngine do

  before :each do
    @siege_engine = SiegeEngine.new
    @defender = Footman.new
    @building = Barracks.new
  end

  describe "#attack!" do
    it "should not attack a non siege engine unit" do
      expect(@siege_engine.attack!(@defender)).to be nil
    end
    it "should attack a siege engine" do
      @defender = SiegeEngine.new
      expect(@siege_engine.attack!(@defender)).not_to be nil
    end
    it "should deal double damage to a building" do
      expect(@siege_engine).to receive(:attack_power).and_return(50)
      @building.should_receive(:damage).with(100)
      @siege_engine.attack!(@building)
    end
  end

end

describe Barracks do

  before :each do
    @barracks = Barracks.new
  end

  describe "#train_siege_engine" do
    it "costs 200 gold" do
      @barracks.train_siege_engine
      expect(@barracks.gold).to eq(800)
    end
    it "costs 60 lumber" do
      @barracks.train_siege_engine
      expect(@barracks.lumber).to eq(440)
    end
    it "costs 3 food" do
      @barracks.train_siege_engine
      expect(@barracks.food).to eq(77)
    end
    it "produces a siege engine unit" do
      siege_engine = @barracks.train_siege_engine
      expect(siege_engine).to be_an_instance_of(SiegeEngine)
    end
  end
end