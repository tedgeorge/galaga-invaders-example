# Ship
# x and y represent the coordinate of the center of the ship.
# For example, when y is 900, then the nose of the ship is at
# coordinate (x, y - height / 2).
class ShipMissile
  attr_accessor # I honestly forgot how to do this
  def initialize
    @missiles = []
  end

  def fire_missle
    @missiles << [x, y - HEIGHT / 2]
  end

  def move_missiles
    @missiles.each do |missile|
      missile[1] -= 10
    end
  end

  def draw_missiles
    @missile_coordinates.each do |missile|
    end
  end
end

class Ship

  WIDTH = 100
  HEIGHT = 200

  def initialize(x, y)
    @x = x
    @y = y
    @missiles = Missile.new
  end

  def move_left
    @x -= 5
  end

  def move_right
    @x += 5
  end

  def fire_missile
    @missiles.fire_missile
  end

  def move_missiles
    @missiles.move_missiles
  end

  def draw_missiles
    @missiles.draw_missiles
  end

  def draw
    # Ignore this
  end

end


=begin
Reflecting on Principle
-----------------------
1. What does the OOD promise to give us, as programmers?
2. What does Martin's SOLID acronym stand for? (Just expand the acronym.)
3. True or False: It is our professional responsibility to always spend time designing before writing our code (designing now rather than later).
4. In Metz' TRUE acronym, what does the E stand for and what does it mean?
5. How does applying SRP naturally lead to good design?

1. Easier to manage code
2. Single responsibility, Open-close, Liskov Substitution,
   Interface segregation, Dependency Inversion
3. False, we can't predict the future of what we have to design
4. Exemplary - The code itself encourages those who change
   it to perpetuate quality.
5. SRP naturally leads to good design by making code
   malleable and easier to understand.
=end
