class GoodBird
  BIRD_YEARS = 2

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age  = a * BIRD_YEARS
  end

  def to_s
    "This bird's name is #{name} and it is #{age} in bird years."
  end

end

tweety = GoodBird.new("Tweety", 4)
puts tweety.age             # => 8
puts tweety                 # => This bird's name is Tweety and it is 8 in bird years.

# The inspect method is very helpful for debugging purposes
# The equivalent of `puts tweety.inspect` is:
p tweety                    # => #<GoodBird:0x000055d4bfa555e8 @name="Tweety", @age=8>