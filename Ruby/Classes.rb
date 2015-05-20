#!/usr/bin/ruby

class Box
  # promenljive klase
  @@count = 0

  # constructor
  def initialize(width, heigth)
    @width = width
    @heigth = heigth
    @@count += 1
  end

  # easy way to define getters-setters
  attr_accessor :width, :heigth

  # method
  def get_area
    @width * @heigth
  end

  def self.print_count
    puts "Box count is: #{@@count}"
  end

  # string representation
  def to_s
    "(w:#{@width}, h:#{@heigth})"
  end

  # To define protected and private methods
  def my_protected
    puts "Hello from protected"
  end

  protected :my_protected

  def my_private
    puts "Hello from private"
  end

  private :my_private

end

# instantiating a class
box1 = Box.new(5, 10)
box2 = Box.new(3, 7)

puts box1.width
puts box2.heigth

area_1 = box1.get_area
puts "Area of the box1 is #{area_1}"

Box.print_count

puts "String representation of box1 is: #{box1}"

# This woul return an error claiming these methods don't exist
# box2.my_private
# box2.my_protected


# Class inheritance
class BigBox < Box
  # adding a new method to the class
  def print_area
    @area = @width * @heigth
    puts "Big box area is : #{@area}"
  end
end

big_box = BigBox.new(10, 20)
big_box.print_area
