require_relative 'spec_helper'

describe Unit do

  before :each do
    @attacker = Unit.new(100,0)
    @defender = Unit.new(100,0)
    @building = Building.new(100)
  end

  describe "#attack!" do
    it "should not attack when dead" do
      expect(@attacker).to receive(:dead?).and_return(true)
      expect(@attacker.attack!(@defender)).to be nil
    end

    it "should not attack a dead unit" do
      expect(@defender).to receive(:dead?).and_return(true)
      expect(@attacker.attack!(@defender)).to be nil
    end

    it "should not attack a dead building" do
      expect(@building).to receive(:dead?).and_return(true)
      expect(@attacker.attack!(@building)).to be nil
    end
  end

end