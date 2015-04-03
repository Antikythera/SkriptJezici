#!/usr/bin/perl
use strict;

## Simple hashmap
my %ages = (
  -Barney => 25,
  -Fred => 24,
  -Dino => 8
);

print "Fred is $ages{-Fred} years old.\n";

=begin comment
  Above %ages could be defined multiple ways.
  %ages = ('Barney', 25, 'Fred', 24, 'Dino', 8);
  %ages{Barney} = 25; ...
  %ages = ('Barney'=>25, 'Fred'=>24, 'Dino'=>8);
=end comment
=cut


## Slicing hashes
my @slice = @ages{-Barney, -Fred};
print "@slice\n";

# or
print join("\n", @ages{-Barney, -Fred});
print "\n";


## Looping hashes
while((my $key, my $value) = each %ages) {
  $key =~ s/-//g; # Remove leading '-'
  print "$key is $value years old.\n";
}


## Checking if memeber exists
if (exists($ages{-Wilma})) {
  print "Wilma is $ages{-Wilma} years old.\n";
} else {
  print "I don't know the age of Wilma.\n";
}


## Making a sroted array from hash
print join(" ,", sort keys %ages), "\n";

# or
my @sorted_hash = sort keys %ages;
foreach my $key (@sorted_hash) {
  print "$key ";
}
print "\n";


## Getting size of hashmap
print "Hash size: ", scalar keys %ages, "\n";


## Delete a member from hashmap
delete($ages{-Fred});
print %ages;
