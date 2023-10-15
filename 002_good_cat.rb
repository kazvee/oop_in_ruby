class GoodCat
  def initialize(name)
    @name = name
  end

  def get_name
    @name
  end

  def speak
    "#{@name} says Meow!"
  end
end

mittens = GoodCat.new("Mittens")
puts mittens.speak                # => Mittens says Meow!
puts mittens.get_name

muffy = GoodCat.new("Muffy")
puts muffy.speak                  # => Muffy says Meow!
puts muffy.get_name