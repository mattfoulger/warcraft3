class Building
  attr_accessor :health_points
  def initialize(health_points)
    @health_points = health_points
  end

  def building?
    true
  end

  def damage(damage_received)
    @health_points -= damage_received
  end

  def dead?
    @health_points <= 0
  end

end