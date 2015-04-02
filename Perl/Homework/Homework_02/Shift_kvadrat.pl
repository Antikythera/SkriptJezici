#!/usr/bin/perl
use strict;
$\ = "\n";

my @numbers = (1..10);
my $go = 1;
my $tmp;
print "Niz: @numbers";

printf "Kvadrati clanova niza: ";
while ($go) {
  $tmp = shift @numbers;
  printf " %g", $tmp ** 2;
  $go = ($#numbers < 0) ? 0 : 1;
}
