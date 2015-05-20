#!/usr/bin/ruby

hello = "Hello World"

# Global variables start with $
$name = "Ruby"

# Instance variables start with @
@year = 2015

# Static class variables start with @@
@@magic = 15

# Constants are written in all caps
PI=3.14159

# Symbols are unique indentifiers in ruby. When value is not important use this.
def walk(direction)
  if direction == :north
    puts "You are headed north."
  end
end

walk(:south)
walk(:north)
