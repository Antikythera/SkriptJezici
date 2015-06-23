#!/usr/bin/ruby
# Napisati Ruby klasu CustomVector čiji su atributi instance x,
# y i z a atribut klase vectors pri čemu atributi instance
# predstavljaju sam vektor dok atribut klase ukupan broj
# izgenerisanih vektora. Pored aksesora koji omogućavaju
# pristupanje i promenu ovih vrednosti, potrebno je implementirati
# koncept operator overloading tako da se vektori međusobno mogu
# sabirati, oduzimati ili množiti kroz +, - i * metode koje
# predstavljaju metode instance.  Dok se u prve dve metode sabiranje
# odnosno oduzimanje vrši sa objektima, metoda * može da primi i broj
# pri čemu je najpre potrebno proveriti da li je prosleđena vrednost
# objekat ili broj. Svaka od ovih metoda treba da vrati novi vektor.
# Pored toga, potrebno je implementirati metodu to_s koja ispisuje
# vrednosti vektora kao i klasnu metodu countVectors koja vraća
# vrednost atributa vectors.
#
# Napraviti dve ili više instance klase CustomVector i demonstrirati
# rad nad njima.

class CustomVector
  @@count = 0

  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
    @@count += 1
  end

  attr_accessor :x, :y, :z

  def to_s
    "(x:#{@x}, y:#{@y}, z:#{@z})"
  end

  def +(other)
    CustomVector.new(@x + other.x, @y + other.y, @z + other.z)
  end

  def -(other)
    CustomVector.new(@x - other.x, @y - other.y, @z - other.z)
  end

  def *(obj)
    if obj.is_a?(CustomVector)
      CustomVector.new(@x * obj.x, @y * obj.y, @z * obj.z)
    else
      CustomVector.new(@x * obj, @y * obj, @z * obj)
    end
  end

  def self.countVectors
    print("There are #{@@count} vectors.")
  end
end


vector1 = CustomVector.new(5, 6, 2)
vector2 = CustomVector.new(3, 4, 3)

puts vector1
puts vector1 + vector2
puts vector1 * 3
puts vector1 * vector2
