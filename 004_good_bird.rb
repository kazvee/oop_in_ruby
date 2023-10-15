class GoodBird
  BIRD_YEARS = 2

  attr_accessor :name, :age, :color

  def initialize(n, a, c)
    self.name = n
    self.age  = a * BIRD_YEARS
    self.color = c
  end

  def change_info(n, a, c)
    self.name = n
    self.age  = a * BIRD_YEARS
    self.color = c
  end

  def what_is_self
    self
  end

  def to_s
    "#{name} is a #{color} bird and is #{age} in bird years."
  end

  puts self
end

tweety = GoodBird.new("Tweety", 4, "yellow")
puts tweety.age             # => 8
puts tweety                 # => This bird's name is Tweety and it is 8 in bird years.

# The inspect method is very helpful for debugging purposes
# The equivalent of `puts tweety.inspect` is:
p tweety                    # => #<GoodBird:0x000055d4bfa555e8 @name="Tweety", @age=8>

p tweety.what_is_self

# From within a class:
# `self` used inside of an instance method references the instance (object) that called the method (the calling object)
# Therefore `self.color=` is the same as `tweety.color=`

# `self` used outside of an instance method references the class and can be used to define class methods
# Therefore if we were to define a name class method, `def self.name=(n)` is the same as `def GoodBird.name=(n)`
