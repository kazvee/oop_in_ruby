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

class GoodSquirrel < Animal
  include Swimmable         # <= Added FIRST
  include Climbable         # <= Added LAST
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
# puts fluffy.swim          # => NoMethodError: undefined method `swim' for #<Animal:0x000056068ceb1890>

puts "---GoodSquirrel method lookup---"
puts GoodSquirrel.ancestors

# ---GoodSquirrel method lookup---
# GoodSquirrel
# Climbable                 <= Added LAST
# Swimmable                 <= Added FIRST
# Animal
# Walkable
# Object
# Kernel
# BasicObject

# The order in which we include modules is important: Ruby looks at the LAST module we included FIRST
# So in the rare occurrence that the modules we mix in contain a method with the same name, the LAST module included will be consulted FIRST 
# Notice also that the module included in the superclass made it on to the method lookup path 
# This shows that all GoodSquirrel objects will have access to not only Animal methods, but also methods defined in the Walkable module, 
# as well as all other modules mixed in to any of its superclasses