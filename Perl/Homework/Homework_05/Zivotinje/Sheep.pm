#!/usr/bin/perl
use strict;
use Animal;
package Sheep;

our @ISA = qw(Mammal);

sub new {
  my ($class) = shift;
  my $self = $class->SUPER::new($_[0]);

  $self->{text} = "I am a sheep.\n";
  $self->{legs} = 4;
  $self->{food} = "Grass";
  $self->{voice} = "Be-e-e-e-e!";
  $self->{product} = "Wool";

  return bless($self, $class);
}

sub getProduct {
  my $self = shift;
  return $self->{product};
}

1;
