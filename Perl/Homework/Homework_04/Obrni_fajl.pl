#!/usr/bin/perl
use strict;

my $file = "temp.txt";

# Pravljenje dummy fajla
print "Pravim fajl...\n";
open FILE, '>'.$file or die "Neuspesno pravljenje fajla $file!\n";
print FILE "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nPraesent aliquam odio mi, non pellentesque felis iaculis sed.\nProin vehicula ipsum velit, sit amet laoreet purus scelerisque quis.\nFusce rutrum, dolor non venenatis ornare, ex lectus pellentesque diam, eu elementum diam felis et urna.";
close FILE;

# Citanje fajla
open FILE, '<'.$file or die "Neuspesno otvaranje fajla $file!\n";
my @linije = reverse <FILE>;
close FILE;
print "@linije";

# Obrisi fajl
unlink $file;
