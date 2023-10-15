class GoodCat

  # The `attr_accessor` method takes a symbol as an argument, and uses it to create the method name for the getter and setter methods
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
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

  def info
    # "#{name} weighs #{weight} and is #{height} tall."

    # Although not required, we can use `self.name=` to let Ruby know we're calling a getter method and not creating a local variable 
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

  # Class methods are where we put functionality that does not pertain to individual objects. 
  # Objects contain state, and if we have a method that does not need to deal with states, then we can just use a class method
  def self.what_am_i         # Class method definition
    "I'm a GoodCat class!"
  end
end

mittens = GoodCat.new("Mittens", "12 inches", "10 lbs")
puts mittens.info                                           # => Mittens weighs 10 lbs and is 12 inches tall.
mittens.change_info('Miss Mittens', '13 inches', '12 lbs')
puts mittens.info                                           # => Miss Mittens weighs 12 lbs and is 13 inches tall.  

muffy = GoodCat.new("Muffy", "18 inches", "15 lbs")
puts muffy.info           # => Muffy weighs 15 lbs and is 18 inches tall.

puts GoodCat.what_am_i    # => I'm a GoodCat class!