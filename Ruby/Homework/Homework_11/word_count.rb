#!/usr/bin/ruby

class WordCount
  @@hash = Hash.new
  def initialize(string)
    @string = string
  end

  def count_words
    array = @string.split(/\W+/)
    array.each { |w|
      if @@hash.has_key?(w)
        @@hash[w] = @@hash[w] + 1
      else
        @@hash[w] = 1
      end
    }
  end

  def print_count
    @@hash.each{ |k,v| puts "#{k}:#{v}" }
  end

end

words = WordCount.new("Ovaj string sadrzi rec 'puta' dva puta.")
words.count_words
words.print_count
