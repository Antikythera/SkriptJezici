#!/usr/bin/perl
use strict;
package Animal;

sub new {
  my $class = shift;
  my $self = {
    text => "I am an abstract animal.\n",
    name => shift
  };

  return bless($self, $class);
}

sub speak {
  my $self = shift;
  print $self->{"text"}
}

sub getName {
  my $self = shift;
  return $self->{"name"}
}

1;
