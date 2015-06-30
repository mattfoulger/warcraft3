class Peasant < Unit

  attr_accessor :health_power, :attack_power

  def initialize
    super(35, 0)
  end
end