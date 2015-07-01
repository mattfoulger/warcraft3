require_relative 'spec_helper'

# test that units have appropriate armor values
#  and that armor properly reduces (or doesn't reduce) damage

describe Unit do

  before :each do
    @unit = Unit.new(100, 0, 10)    
  end

  it "should have correct armor value" do
    expect(@unit.armor).to eq(10)
  end

  it "should receive less damage thanks to armor" do
    initial_health = @unit.health_points
    @unit.damage(50)
    after_health = @unit.health_points
    damage_taken = initial_health - after_health
    expect(damage_taken).to eq(40)
  end

end


describe Footman do

  before :each do
    @footman = Footman.new    
  end

  it "should have 3 armor by default" do
    expect(@footman.armor).to eq(3)
  end

  it "should receive less damage thanks to armor" do
    initial_health = @footman.health_points
    @footman.damage(5)
    after_health = @footman.health_points
    damage_taken = initial_health - after_health
    expect(damage_taken).to eq(2)
  end

end

describe Peasant do

  before :each do
    @peasant = Peasant.new    
  end

  it "should have 0 armor by default" do
    expect(@peasant.armor).to eq(0)
  end

  it "should receive no less damage than normal" do
    initial_health = @peasant.health_points
    @peasant.damage(5)
    after_health = @peasant.health_points
    damage_taken = initial_health - after_health
    expect(damage_taken).to eq(5)
  end

end

