require 'pry'

# 1. create a new class Animal and an instance myAnimal
class Animal

  # 4. macros - abstract away the need to explicitly define getters and setters
  # comment out 3.
  attr_reader :name, :breed
  attr_writer :name

  # 5. object initialization
  def initialize(breed)
    @breed = breed
  end

  # 2. create an instance method
  def walk
    puts "Animal can walk"
  end

  # 3. using setters and getters
  # def name=(name)
  #   @name = name
  # end

  # def name
  #   @name
  # end
end


# myAnimal = Animal.new
binding.pry