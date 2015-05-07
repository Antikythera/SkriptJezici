#!/usr/bin/ruby

def ProstiBrojevi(n)
  for i in (1..n)
    if i == 1
      puts "1"
    elsif i == 3
      puts "3"
    elsif (i % 2 != 0) and (i % 3 != 0)
      puts i
    end
  end
end

ProstiBrojevi(100)
