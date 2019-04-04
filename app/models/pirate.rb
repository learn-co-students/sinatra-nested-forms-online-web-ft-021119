class Pirate

  attr_reader :name, :weight, :height, :ship
  PIRATES = []

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    @ship = params[:ship]

    PIRATES << self
  end

  def self.all
    PIRATES
  end

end
