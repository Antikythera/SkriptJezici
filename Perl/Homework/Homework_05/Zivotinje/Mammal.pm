#!/usr/bin/perl
use strict;
use Animal;
package Mammal;

our @ISA = qw(Animal);

sub new {
  my ($class) = shift;
  my $self = $class->SUPER::new($_[0]);

  $self->{text} = undef;
  $self->{legs} = undef;
  $self->{food} = undef;
  $self->{voice} = undef;

  return bless($self, $class);
}

sub getFood {
  my $self = shift;
  return $self->{"food"}
}

sub getNumLegs {
  my $self = shift;
  return $self->{"legs"}
}

sub says {
  my $self = shift;
  return $self->{"voice"}
}

1;
