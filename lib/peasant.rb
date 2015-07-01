class Peasant < Unit

  attr_reader :health_power, :attack_power

  def initialize
    super(35, 0)
  end
end