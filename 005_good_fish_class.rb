class Animal
  def speak
    "Hello!"
  end
end

class GoodFish < Animal
end

class Cat < Animal
end

goldie = GoodFish.new
paws = Cat.new
puts goldie.speak           # => Hello!
puts paws.speak             # => Hello!