class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class GoodBear < Animal
  def initialize(color)
    super
    @color = color
  end
end

class BadSnake < Animal
  def initialize(age, name)
    super(name)
    @age = age
  end
end

class Plant
  def initialize
  end
end

class Carnivorous < Plant
  def initialize(color)
    super()
    @color = color
  end
end

kali = GoodBear.new("brown")        # => #<GoodBear:0x000055fd608f2dd0 @name="brown", @color="brown">
p kali

susan = BadSnake.new(2, "Susan")    # => #<BadSnake:0x0000556ea3285f70 @name="Susan", @age=2>
p susan

audreyii = Carnivorous.new("green") # => #<Carnivorous:0x0000565356245040 @color="green">
p audreyii