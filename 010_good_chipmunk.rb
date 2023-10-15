class GoodChipmunk
  CHIPMUNK_YEARS = 3

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age = a
  end

  def public_disclosure
    "#{self.name} in human years is #{human_years}"
  end

  private

  def human_years
    age * CHIPMUNK_YEARS
  end
end

chippy = GoodChipmunk.new("Chippy", 4)
# puts chippy.human_years         # => NoMethodError: private method `human_years' called for #<GoodChipmunk:0x000055a80ffd69e0 @name="Chippy", @age=4>
puts chippy.public_disclosure     # => Chippy in human years is 12