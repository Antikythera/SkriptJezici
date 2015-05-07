#!/usr/bin/ruby

def stringSize(string)
  case string.length
  when 0
    puts "Prazno"

  when 1 ... 5
    puts "Kratko"

  when 6 .. 12
    puts "Srednje dugo"

  else
    puts "Dugo"

  end

end


stringSize("")
stringSize("Pera Detlic")
stringSize("vuk")
stringSize("Pera kojot super genije")
