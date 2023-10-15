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
end

leo = Mammal::Lion.new
morty = Mammal::Moose.new
leo.speak('Raar!')           # => "Raar!"
morty.say_name('Morty')      # => "Morty"
