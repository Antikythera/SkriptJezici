#!/usr/bin/perl
use strict;
package Duck;

our @ISA = qw(Animal);

sub new {
  my $class = $_[0];
  my $self = {
    text => "I am a duck.\n"
  };

  return bless($self, $class);
}

1;
