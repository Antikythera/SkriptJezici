#!/usr/bin/perl
use strict;

my $kljuc;
my %imena = (
  -Stefan => "Mojsilovic",
  -Milan => "Hakaj",
  -Nikola => "Stojilkovic",
  -Andrej => "Stanisev"
);

print "Unesite ime: ";
chomp(my $ime = <STDIN>);

($kljuc = $ime) =~ s/(.*)/-$1/;

print "Ime: $ime\nPrezime: ", $imena{$kljuc};
