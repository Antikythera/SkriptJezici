#!/usr/bin/perl
use strict;
=begind comment
  Znak '&' ako stoji ispred funckije omogucava da se funckija pozove bez pratecis zagrada,
  takodje automatski prosledjuje argumente iz funckije koja ju je pozvala.
=end comment
=cut

sub show_args {
  my @args = @_;
  print "The arguments are: @args\n";
}

sub show_args_again {
  &show_args;
}

show_args('fred', 'barney', 'betty');

show_args_again('fred', 'barney', 'betty');
