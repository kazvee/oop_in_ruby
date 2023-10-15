class GoodCat

  # The `attr_accessor` method takes a symbol as an argument, and uses it to create the method name for the getter and setter methods
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  # Replaced by `attr_accessor` method
  # If we only want the getter without the setter, we can use the `attr_reader` method

  # def name
  #   @name
  # end

  # Replaced by `attr_accessor` method
  # If we only want the setter without the getter, we can use the `attr_writer` method 

  # def name=(n)
  #   @name = n
  # end

  def speak
    "#{name} says Meow!"
  end
end

mittens = GoodCat.new("Mittens")
puts mittens.speak              
puts mittens.name
mittens.name = "Miss Mittens"
puts mittens.name

muffy = GoodCat.new("Muffy")
puts muffy.speak              
puts muffy.name