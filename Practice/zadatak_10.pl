#!/usr/bin/perl
# Napraviti tekstualni fajl chars.txt. Potom napisati Perl
# skriptu koja otvara ovaj fajl za čitanje i proverava da li
# je stream otvoren ili ne na osnovu čega je potrebno ispisati
# odgovarajuću poruku. Učitati sadržaj fajla u niz a potom
# proći kroz svaki element i svuda izmeniti malo slovo a u
# veliko (A). Na kraju je potrebno ištampati vrednost
# izmenjenog niza.
use strict;

my $file = "zadatak_10.txt";
my @output;

# Citanje fajla
open FILE, '<'.$file or die "Neuspesno otvaranje fajla $file!\n";
my @linije = <FILE>;
close FILE;
print " @linije";
print "---------------\n";

foreach my $line (@linije) {
  $line =~ s/a/A/g;
  unshift @output, $line;
}
print " @output";
