# privates are a way of encapsulating functionality within a ruby class
# private methods are not called by an explicit receiver
# private methods are called within context of defining class
require "pry"
class Animal

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def walk
    "My animal #{name} can walk"
  end

  def make_sound
    @animal_sounds = []
    bark
    meow
    "My animals can make the sounds #{@animal_sounds}."
  end

  private

  def bark
    @animal_sounds << "woof"
  end

  def meow
    @animal_sounds << "meoww"
  end

end

my_dog = Animal.new("RExx")
my_cat = Animal.new("Kitty")
binding.pry