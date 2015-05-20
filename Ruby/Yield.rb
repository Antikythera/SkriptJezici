#!/usr/bin/ruby

# Yield can be inserted into blocks. It yields to lines of code we pass to a method
def my_method
  puts "Start"
  yield
  yield
  puts "End"
end

my_method { puts "inserted code" }


# Yield can be parametrized
def who_says_what
  yield( "Dave", "hello" )
  yield( "Andy", "hoodbye" )
end

who_says_what { |person, phraze| puts "#{person} says #{phraze}." }
