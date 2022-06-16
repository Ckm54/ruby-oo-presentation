# class variables are accessible to the entire class
# class methods are called on the class itself and not on an instance

require "pry"

class Animal

  # 4. using a class constant --- Can be accessible from outside using ::
  BREEDS = ['german', 'kenyan']

  # 1. define a class variable
  @@total_animals = 0

  # 3. operate on a class variable from an instance method
  def initialize(breed)
    if BREEDS.include?(breed)
      @@total_animals += 1
    end
  end

  def walk
    puts "Animal walking"
  end

  #  2. define a class method to return total number of animals
  def self.count
    @@total_animals
  end
end

binding.pry