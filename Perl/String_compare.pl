#!/usr/bin/perl
use strict;

print("Polite question ?:\n");
my $question = <STDIN>;

# =~ means matches
if ($question =~ /P|please/) {
  print("That was polite\n");
}
else {
  print("That was not polite\n")
}

# !~ means doesn't match
if ($question !~ /\d/) {
  print "The question doesn't contain a number.\n";
} else {
  print "The question contains a number.\n";
}

# ternary operator
print "Enter a number: ";
chomp(my $number = <STDIN>);
my $intensity =
  ($number < 10) ? "low." :
  ($number < 100) ? "medium." :
  ($number < 1000) ? "high." :
  "critical!"; # default
print "That was $intensity \n";

my $lt_1k = ($number > 1000) ? 1 : 0;
if ($lt_1k) {
  print "The number was higher than 1000.\n";
} else {
  print "The number was lower than 1000.\n";
}

$question =~ s/please//;
print "Question made impolite:\n  $question";
