#!/usr/bin/perl
use strict;
package Vector2D;

sub new {
  my ($class) = shift;
  my $self = {
    x => shift,
    y => shift
  };

  return bless($self, $class);
}

sub getX {
  my $class = shift;
  return $class->{x};
}

sub getY {
  my $class = shift;
  return $class->{y};
}

sub setx {
  my $class = shift;
  my $var = shift;
  $class->{x} = $var;
}

sub sety {
  my $class = shift;
  my $var = shift;
  $class->{y} = $var;
}

sub plus {
  my $vector_a = shift;
  my $vector_b = shift;

  return new Vector2D (
    $vector_a->getX() + $vector_b->getX(),
    $vector_a->getY() + $vector_b->getY()
  );
}

sub minus {
  my $vector_a = shift;
  my $vector_b = shift;

  return new Vector2D (
    $vector_a->getX() - $vector_b->getX(),
    $vector_a->getY() - $vector_b->getY()
  );
}

sub multiply {
  my $vector = shift;
  my $var = shift;

  return new Vector2D (
    $var * $vector->getX(),
    $var * $vector->getY()
  );
}

sub divide {
  my $vector = shift;
  my $var = shift;

  return new Vector2D (
    $vector->getX() / $var,
    $vector->getY() / $var
  );
}

sub getXY {
  my $vector = shift;
  return ( $vector->getX(), $vector->getY() );
}

1;
