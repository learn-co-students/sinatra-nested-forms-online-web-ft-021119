class Pirate
  attr_accessor :name, :weight, :height
  @@all = []

  def initialize(params)
    binding.pry

    @@all << self
  end

  def self.all
    @all
  end
end
