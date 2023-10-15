class Animal
  def speak
    "Hello!"
  end
end

class GoodFish < Animal
  attr_accessor :name

  def initialize(n)
    self.name = n
  end

  def speak
    "#{self.name} says glub glub!"
  end
end

class Cat < Animal
end

goldie = GoodFish.new("Goldie")
paws = Cat.new
puts goldie.speak           # => Hello!
puts paws.speak             # => Hello!