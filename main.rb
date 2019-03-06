module Drawable

  def draw
  end

end

module Spriteable

  def get_sprite(args)
    return args.fetch[:sprite]
  end

end

module Initializeable
end

module Locatable
end

module Destroyable
end

module MissileFiring
end

module Movable
end

module Hittable
end

module Controlable
end



=begin
Reflecting on Principle
1) How are Ruby modules (and similar features from other langs)
   different from a class, in their purpose?

   Modules are meant to be code that is injected into
   multiple classes for use across them rather than
   their own standalone object. Basically, they
   sullplement other objects with code.

2) What is LSP?

   Liskov Substitution Principle, which dictates that
   any object from a subclass should be ab;e to replace an
   object from a superclass without significant alterations
   to the code

3) Briefly describe how the template method pattern works.

   The template method pattern works by having superclasses that
   control abstract behavior, that then then divide into
   subclasses with more concrete behavior
=end
