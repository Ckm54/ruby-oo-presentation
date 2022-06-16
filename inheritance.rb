# inheritance enables creation of a family of objects with shared classes
# need to model animals each with a name and breed with some having owners
# each animal can walk

require "pry"
# superclass
class Animal
  attr_accessor :name, :legs
  def initialize(name, legs)
    @name = name
    @legs = legs
  end

  def move
    puts "This animal can walk around"
  end
end

# 1. Basic inheritance
class Cat < Animal
end

# using super
class Dog < Animal

  attr_accessor :name, :legs, :age

  def initialize(name, legs, age)
    super(name, legs)
    @age = age
  end
end

class Kangaroo < Animal
end


binding.pry