class Player
  DEFAULT_SUPER_POWERS = 0
  attr_reader :name, :super_powers

  def initialize(name)
    @name = name
    @super_powers = DEFAULT_SUPER_POWERS
  end

  def impart(name)
    name.receive_superpowers
  end

  def receive_superpowers
    @super_powers += 10
  end
end
