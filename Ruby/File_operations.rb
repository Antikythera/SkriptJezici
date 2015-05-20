#!/usr/bin/ruby

# this line is equivalent to 'using' in python
# when the end line is reached, resources are realeased
File.open("test.txt", "r") do | file |
  while line = file.gets
    puts line
  end
end

# using iterators to read
File.open("test.txt", "r") do | file |
  file.each_byte do | char |
    printf "#{char} "
  end

  puts
  file.seek(0) # seek to beginning

  file.each_line do | line |
    puts line
  end
end


# Also much easier way to load contents of a file into a variable
str = IO.read("test.txt")
puts str

# Iterate through a file
IO.foreach("test.txt") { | line | puts line }


# Writing to a file
File.open("output.txt", "w") do | file |
  file.puts "lel this is inside a file"
  file.puts "4 + 3 = #{4+3}"
end

puts File.read("output.txt")
