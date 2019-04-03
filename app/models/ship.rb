class Ship
  attr_accessor :name, :type, :booty
  SHIP = []
  def initialize(name, type, booty)
    @name = name
    @type = type
    @booty = booty
    SHIP << self
  end
  def self.all
    SHIP
  end
  def self.clear
    SHIP.clear
  end
end
