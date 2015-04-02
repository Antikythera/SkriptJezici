#!/usr/bin/perl
use strict;
use warnings;

=begin comment
  U slucaju da se unesu isti brojevi, taj broj bice vracen.
  U slucaju da se unese nesto drugo osim broja, ako je podeseno koriscenje upozorenja,
  program ce istampati gresku i vratiti zadnji argument.
=end comment
=cut
sub veci {
  my $br1 = $_[0];
  my $br2 = $_[1];

  if ($br1 > $br2) {
    return $br1;
  }
  else {
    return $br2;
  }
}

print "Unesi dva broja za poredjenje.\n";

print "Prvi broj: ";
chomp(my $broj1 = <STDIN>);

print "Drugi broj: ";
chomp(my $broj2 = <STDIN>);

print "Veci broj je: ", veci($broj1, $broj2);
