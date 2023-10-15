class GoodCat
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def name=(n)
    @name = n
  end

  def speak
    "#{@name} says Meow!"
  end
end

mittens = GoodCat.new("Mittens")
puts mittens.speak                # => Mittens says Meow!
puts mittens.name
mittens.name = "Miss Mittens"
puts mittens.name

muffy = GoodCat.new("Muffy")
puts muffy.speak                  # => Muffy says Meow!
puts muffy.name