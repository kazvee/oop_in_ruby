class GoodCat
  def initialize(name)
    @name = name
  end

  def get_name
    @name
  end

  def set_name=(name)
    @name = name
  end

  def speak
    "#{@name} says Meow!"
  end
end

mittens = GoodCat.new("Mittens")
puts mittens.speak                # => Mittens says Meow!
puts mittens.get_name
mittens.set_name = "Miss Mittens"
puts mittens.get_name

muffy = GoodCat.new("Muffy")
puts muffy.speak                  # => Muffy says Meow!
puts muffy.get_name