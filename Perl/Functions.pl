#!/usr/bin/perl
use strict;

## Simple function
sub Hello {
  print "Hello World!\n";
}
Hello();


## Arguments
sub Average {
  my $num_args = scalar(@_);
  my $sum = 0;

  foreach my $item (@_) {
    $sum += $item;
  }
  return ($sum / $num_args);
}
print "Average of 10 20 30: ", Average(10, 20, 30);
