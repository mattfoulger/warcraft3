class Unit
  attr_reader :health_points, :attack_power
  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
  end

  def attack!(enemy)
    return nil if enemy.dead? || self.dead?

    unless enemy.class.superclass.name == "Building"
      enemy.damage(attack_power)
    else
      enemy.damage(attack_power/2)
    end
  end

  def damage(damage_received)
    @health_points -= damage_received
  end

  def dead?
    health_points <= 0
  end

end