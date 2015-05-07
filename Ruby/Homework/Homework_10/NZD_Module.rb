#!/usr/bin/ruby

module NZD
  def nzd(a, b)
    while (b > 0)
      tmp = b
      b = a % b
      a = tmp
    end

    puts a
  end
end
