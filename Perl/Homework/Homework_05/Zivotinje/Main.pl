#!/usr/bin/perl
use strict;
use Cow;
use Horse;
use Sheep;

my $cow = Cow->new( "Belka" );
$cow->speak;
printf "My cows name is %s.\n", $cow->getName;
printf "It has %g legs.\n", $cow->getNumLegs;
printf "It eats %s.\n", $cow->getFood;
printf "It gives %s.\n", $cow->getProduct;
printf "And it likes to say %s\n", $cow->says;

print "\n--------------------------------\n";

my $horse = Horse->new( "Pera" );
$horse->speak;
printf "My horses name is %s.\n", $horse->getName;
printf "It has %g legs.\n", $horse->getNumLegs;
printf "It eats %s.\n", $horse->getFood;
printf "And it likes to say %s\n", $horse->says;
$horse->rideHorse;

print "\n--------------------------------\n";

my $sheep = Sheep->new( "Betty" );
$sheep->speak;
printf "My sheeps name is %s.\n", $sheep->getName;
printf "It has %g legs.\n", $sheep->getNumLegs;
printf "It eats %s.\n", $sheep->getFood;
printf "It gives %s.\n", $sheep->getProduct;
printf "And it likes to say %s\n", $sheep->says;
