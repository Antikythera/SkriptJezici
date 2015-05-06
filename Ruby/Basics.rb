#!/usr/bin/ruby

puts "Hello World!"

hello = "Hello World!"
puts "#{hello}"

# Slicing
herb = "Parsley"
puts herb[0,1]
puts herb[-2,2]

puts herb[0..3]
puts herb[-5..-2]

# Short guessing game
words = ['doobar', 'baz', 'quux']
secret = words[rand(3)]

print "Guess the word: "

while guess = STDIN.gets
  guess.chop!

  if guess == secret
    puts "You win!"
    break
  else
    puts "Wrong."
  end

  puts "Guess the word: "

end

puts "The word was: #{secret}"
