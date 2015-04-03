#!/usr/bin/perl
use strict;

sub prosek {
  my $num_args = scalar(@_);
  my $sum = 0;

  foreach my $item (@_) {
    $sum += $item;
  }

  return ($sum / $num_args);
}

my @list = (1..50);
print "Lista brojeva: @list\n";

my $prosek = prosek(@list);
printf "Prosek niza: %g \n", $prosek;

printf "Brojevi iznad proseka: ";
foreach my $item (@list) {
  if ($item > $prosek) {
    printf "%g ", $item;
  }
}
