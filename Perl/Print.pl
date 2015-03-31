#!/usr/bin/perl
use strict;

# Print some strings, and integers
print "Hello World!\n";
print "6 * 7 = ", 6 * 7, "\n";

# STDIN and if
my $input_line = <STDIN>;
if ($input_line eq "\n") {
  print "You entered a blank line!";
} else {
  print "That line of input was: $input_line";
}

# Chomp
print "\nEnter a line: ";
my $food;
chomp($food = <STDIN>);

print "$food";
