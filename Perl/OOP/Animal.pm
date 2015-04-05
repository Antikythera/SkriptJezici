#!/usr/bin/perl
use strict;
package Animal;

sub new {
  my $class = $_[0];
  my $self = {
    text => "I am an abstract animal.\n"
  };

  return bless($self, $class);
}

sub speak {
  my $self = shift;
  print $self->{"text"}
}

1;
