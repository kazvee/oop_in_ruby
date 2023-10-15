module Walkable
  def walk
    "I'm walking."
  end
end

module Swimmable
  def swim
    "I'm swimming."
  end
end

module Climbable
  def climb
    "I'm climbing."
  end
end

class Animal
  include Walkable

  def speak
    "I'm an animal, and I speak!"
  end
end

puts "---Animal method lookup---"
puts Animal.ancestors

# ---Animal method lookup---
# Animal
# Walkable
# Object
# Kernel
# BasicObject

fluffy = Animal.new
puts fluffy.speak           # => I'm an animal, and I speak!
puts fluffy.walk            # => I'm walking.
puts fluffy.swim            # => NoMethodError: undefined method `swim' for #<Animal:0x000056068ceb1890>