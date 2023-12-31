module Swimmable
  def swim
    "I'm swimming!"
  end
end

class Animal; end

class Fish < Animal
  include Swimmable         # mixing in Swimmable module
end

class Mammal < Animal
end

class Cat < Mammal
end

class Dog < Mammal
  include Swimmable         # mixing in Swimmable module
end

sparky = Dog.new
jaws  = Fish.new
paws   = Cat.new

puts sparky.swim                 # => I'm swimming!
puts jaws.swim                   # => I'm swimming!
puts paws.swim                   # => NoMethodError: undefined method `swim' for #<Cat:0x0000561eabb6e228>