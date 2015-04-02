#!/usr/bin/perl
use strict;
$\ = "\n";

printf "Unesite string: ";
chomp(my $string = <STDIN>);

my @reverse_string = reverse split / /, $string;

foreach my $i (0..$#reverse_string) {
  $reverse_string[$i] = reverse $reverse_string[$i];
}

print "@reverse_string";
