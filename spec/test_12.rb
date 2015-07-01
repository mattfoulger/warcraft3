require_relative 'spec_helper'

describe Unit do

  before :each do
    @unit = Unit.new(100,0)   
  end

  describe "#dead?" do
    it "should still be alive after insufficient damage" do
      expect(@unit).to receive(:health_points).and_return(10)
      expect(@unit.dead?).to be false
    end
  
    it "should be dead when health is negative" do
      expect(@unit).to receive(:health_points).and_return(-10)
      expect(@unit.dead?).to be true
    end
  end

end
