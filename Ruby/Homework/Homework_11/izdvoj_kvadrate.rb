#!/usr/bin/ruby
include Math

def izdvoj_kvadrate(array)
  array.select{ |i| Math.sqrt(i) % 1 == 0 }
end

array = *(1..6)

print array
puts ""
print izdvoj_kvadrate(array)
