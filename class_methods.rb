require "pry"

class Book

  # class variable
  @@all = []

  attr_accessor :title

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def self.print_titles
    self.all.each do |book|
      puts book.title
    end
  end

end

hobbit = Book.new("The hobbit")
oliver = Book.new("Oliver Twist")
binding.pry
