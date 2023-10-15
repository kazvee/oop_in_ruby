class GoodBird
  BIRD_YEARS = 2

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age  = a * BIRD_YEARS
  end
end

tweety = GoodBird.new("Tweety", 4)
puts tweety.age             # => 8