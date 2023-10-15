module Mammal
  class Lion
    def speak(sound)
      p "#{sound}"
    end
  end

  class Moose
    def say_name(name)
      p "#{name}"
    end
  end

  def self.some_out_of_place_method(num)
    num ** 2
  end
end

leo = Mammal::Lion.new
morty = Mammal::Moose.new
leo.speak('Raar!')           # => "Raar!"
morty.say_name('Morty')      # => "Morty"

puts value = Mammal.some_out_of_place_method(4)
# Can also call the method like this, but it is not the preferred way:
# puts value = Mammal::some_out_of_place_method(4)