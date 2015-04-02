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

print "$food\n";

# formating is done with printf command
# %g automatically formats int double etc...
printf "Your number is: %g\n", 1.17; # 1

my $name = "Stefan";
my $age = "25";
printf "Your name is %s and you are %g old.\n", $name, $age;

# spacing is done like this %#d where # is the number of space reserved
printf "Spaced numbers %6d %2d\n", 234, 56;
