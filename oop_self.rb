require "pry"
# self points to the object that owns the currently executing ruby code
class Animal

  attr_accessor :name, :location

  def initialize(name)
    @name = name
  end

  def walk
    puts "Animal is walking"
  end

  # use self to set an instances location
  # call location= method on self
  # self refers to the object on which the method is being called
  def get_location(location)
    binding.pry
    self.location = location
  end

end

cat = Animal.new("psss")
binding.pry