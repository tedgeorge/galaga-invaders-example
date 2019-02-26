#!/usr/bin/env ruby

require_relative 'alien'
require_relative 'ship'
require_relative 'missile_collection'

class GalagaInvaders

  WIDTH = 1920
  HEIGHT = 1080

  attr_accessor :ship, :alien, :missiles

  def initialize
    @caption = "Galaga Invaders"
    @ship = Ship.new(WIDTH, HEIGHT)
    @alien = Alien.new
    @missiles = MissileCollection.new
  end

  def update
    missiles.update
  end

  def draw
    ship.draw
    alien.draw
    missiles.draw
  end

  def show
    while (true) do
      update
      draw
      key_pressed(gets.chomp) # Simulating a key interrupt.
    end
  end

  def key_pressed(key)
    if key == 'a'
      ship.move_left
    elsif key == 'd'
      ship.move_right
    elsif key == ' '
      missiles.add_from(ship)
    end
    if key == 'p'
      missiles.add_from(alien)
    end
  end

end

GalagaInvaders.new.show

=begin
Reflecting on Principle
-----------------------
1. What is "duck typing" and what does it have to do with polymorphism?
2. What are some common code smells that indicate the need for relying on a
   "duck type" rather than a concrete class?
3. True or False: Abstractions like duck typing make code explicitly easier to
   understand, vs. using concrete types.

1. Duck typing is when we define objects by their behavior more than their class.
   It has to do with polymorphism because duck typed objects can respond to the
   same message.
2. Case statements that switch on a class, use of kind_of or is_a, or use of
   responds_to.
3. False, Abstractions make code harder to understand than with concrete types
   but make it easier to change.
=end
