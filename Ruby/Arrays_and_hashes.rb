#!/usr/bin/ruby

# Arrays
fruits = [ 'orange', 'apple', 'banana', 'grapes' ]
# This can be written faster using %w{}
fruits =  %w{ orange apple banana grapes }

puts fruits.inspect

# Accessing arrays
puts "First fruit in fruits array: #{fruits[0]}"


# Hashes
inst_section = {
  'cello' => 'string',
  'clarinet' => 'woodwind',
  'drum' => 'percussion',
  'oboe' => 'woodwind',
  'trumpet' => 'brass',
  'violin' => 'string'
}

# Accessing hash maps
puts "Clarinet is a #{inst_section['clarinet']} instrument."

# using symbols for keys in hashmaps
inst_section = {
  :cello => 'string',
  :clarinet => 'woodwind',
}
# in newer version of ruby you can even exclude the '=>'

puts "Cello is a #{inst_section[:clarinet]} instrument."
