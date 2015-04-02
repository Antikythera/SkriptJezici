#!/usr/bin/perl
use strict;
$\ = "\n";

my @array = (1..10);
print "Niz: @array";

printf "Kvadrati elemenata niza:";
foreach my $i (@array) {
  printf " %g", $i ** 2;
}
