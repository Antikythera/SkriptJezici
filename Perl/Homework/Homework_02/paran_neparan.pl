#!/usr/bin/perl
use strict;
use warnings;
=begin comment
  U slucaju da programu prosledimo karakter umesto broja, posto smo stavili 'use warnings',
  program ce nas upozoriti da smo napravili gresku sa sledecom porukom:
  "Argument "w" isn't numeric in modulus (%) at ./paran_neparan.pl line 8, <STDIN> line 1."
=end comment
=cut

print "Unesi celi broj: ";
chomp(my $broj = <STDIN>);

if ($broj % 2 == 0){
  print "Broj $broj je paran.\n";
} else {
  print "Broj $broj je neparan.\n";
}
