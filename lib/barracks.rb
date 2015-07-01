class Barracks < Building
  attr_accessor :gold, :food, :lumber
  def initialize
    super(500)
    @gold = 1000
    @food = 80
    @lumber = 500
  end

  def can_train_siege_engine?
    return false if gold < 200 || lumber < 60 || food < 3
    true
  end

  def train_siege_engine
    return nil unless can_train_siege_engine?
    @gold -= 200
    @lumber -= 60
    @food -= 3
    SiegeEngine.new
  end

  def can_train_footman?
    return false if gold < 135 || food < 2
    true
  end

  def train_footman
    return nil unless can_train_footman?
    @gold -= 135
    @food -= 2
    Footman.new
  end

  def can_train_peasant?
    return false if gold < 90 || food < 5
    true
  end

  def train_peasant
    return nil unless can_train_peasant?
    @gold -= 90
    @food -= 5
    Peasant.new
  end

end
