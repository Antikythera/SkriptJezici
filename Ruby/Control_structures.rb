#!/usr/bin/ruby

today = Time.now
if today.saturday?
  puts "Time for some cs"
elsif today.sunday?
  puts "Sheeyit time for some dota"
else
  puts "Ayy"
end


num_pallets = 0
weight = 0
while weight < 100 and num_pallets <= 5
  pallet = next_pallet()
  weight += pallet.weight
  num_pallets += 1
end


x=1
if x > 2
   puts "x is larger than 2"
elsif x <= 2 and x!=0
   puts "x is 1"
else
   puts "else block"
end


x=1
unless x>2
   puts "x is less than 2"
 else
  puts "x is greater than 2"
end


$age =  5
case $age
  when 0 .. 2
  	puts "baby"
  when 3 .. 6
  	puts "little child"
  when 7 .. 12
  	puts "child"
  when 13 .. 18
  	puts "youth"
  else
  	puts "adult"
end
