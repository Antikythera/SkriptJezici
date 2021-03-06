#!/usr/bin/perl
use strict;
use Mammal;
package Cow;

our @ISA = qw(Mammal);

sub new {
  my ($class) = shift;
  my $self = $class->SUPER::new($_[0]);

  $self->{text} = "I am a cow.\n";
  $self->{legs} = 4;
  $self->{food} = "Grass";
  $self->{voice} = "Moo!";
  $self->{product} = "Milk";

  return bless($self, $class);
}

sub getProduct {
  my $self = shift;
  return $self->{product};
}

1;
