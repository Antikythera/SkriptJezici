#!/usr/bin/perl
use strict;
use Cow;
use Horse;

my $cow = Cow->new( "Belka" );
$cow->speak;
printf "My cows name is %s.\n", $cow->getName;
printf "It has %g legs.\n", $cow->getNumLegs;
printf "It eats %s.\n", $cow->getFood;
printf "And it likes to say %s\n", $cow->says;

print "\n--------------------------------\n";

my $horse = Horse->new( "Pera" );
$horse->speak;
printf "My horses name is %s.\n", $horse->getName;
printf "It has %g legs.\n", $horse->getNumLegs;
printf "It eats %s.\n", $horse->getFood;
printf "And it likes to say %s\n", $horse->says;
