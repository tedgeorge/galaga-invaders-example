require_relative 'missile'

class Alien

  WIDTH = 50
  HEIGHT = 50

  attr_accessor :x, :y

  def initialize(args)
    @x = args.fetch(:x, 200)
    @y = args.fetch(:y, 200)
  end

  def move
  end

  def draw
    puts self
  end

  def to_s
    "👾 (#{x}, #{y})"
  end

  def ordinance_velocity
    10
  end

  def muzzle_location
    Vector.new(x, bottom_edge)
  end

  def bottom_edge
    y + HEIGHT / 2
  end

end
