#!/usr/bin/perl
use strict;
use Animal;
package Horse;

our @ISA = qw(Mammal);

sub new {
  my ($class) = shift;
  my $self = $class->SUPER::new($_[0]);

  $self->{text} = "I am a horse.\n";
  $self->{legs} = 4;
  $self->{food} = "Grass";
  $self->{voice} = "Neigh!";

  return bless($self, $class);
}

sub rideHorse {
  my $self = shift;
  printf "You are riding the horse %s.\n", $self->{name};
}

1;
