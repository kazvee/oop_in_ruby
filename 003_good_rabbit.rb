class GoodRabbit
  @@number_of_rabbits = 0

  def initialize
    @@number_of_rabbits += 1
  end

  def self.total_number_of_rabbits
    @@number_of_rabbits
  end
end

puts GoodRabbit.total_number_of_rabbits   # => 0

rabbit1 = GoodRabbit.new
rabbit2 = GoodRabbit.new

puts GoodRabbit.total_number_of_rabbits   # => 2