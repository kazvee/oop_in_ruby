class GoodCat
  def initialize(name)
    @name = name
  end

  def speak
    "Meow!"
  end
end

mittens = GoodCat.new("Mittens")
puts mittens.speak                # => Meow!