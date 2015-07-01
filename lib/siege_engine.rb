class SiegeEngine < Unit

  def initialize
    super(400, 50)
  end

  def attack!(enemy)
    return nil if enemy.dead? || self.dead? || ((enemy.class.superclass.name == "Unit") && (enemy.class.name != "SiegeEngine"))

    unless enemy.class.superclass.name == "Building"
      enemy.damage(attack_power)  
    else
      enemy.damage(attack_power*2)
    end
  end



end