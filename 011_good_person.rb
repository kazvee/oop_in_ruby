class GoodPerson
  def initialize(age)
    @age = age
  end

  def older?(other_person)
    age > other_person.age
  end

  protected

  attr_reader :age
end

mary = GoodPerson.new(64)
june = GoodPerson.new(42)

puts mary.older?(june)  # => true
puts june.older?(mary)  # => false

puts mary.age           # => NoMethodError: protected method `age' called for #<GoodPerson:0x000055c7b7d8dcc0 @age=64>