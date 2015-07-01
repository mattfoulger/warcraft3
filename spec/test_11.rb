require_relative 'spec_helper'
#
describe Barracks do
  
  before :each do
  @barracks = Barracks.new
  end

  it "should have 500 HP by default" do
    expect(@barracks.health_points).to eq(500)
  end

  describe "#damage" do
    it "should take damage" do
      @barracks.damage(10)
      expect(@barracks.health_points).to eq(490)
    end
    it "should take half damage from a footman (5 instead of 10)" do
      Footman.new.attack!(@barracks)
      expect(@barracks.health_points).to eq(495)
    end
  end
end
