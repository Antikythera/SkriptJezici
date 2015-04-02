#!/usr/bin/perl
use strict;

# Foreach loop through arrays
my @array = (1,2,3);

foreach my $member (@array){
  print $member . "\n";
}


# 'qw' function is used to make array with quotations marks out of input.
# pretty usefull for making arrays
@array = qw(oranges apples banans plums);

# '#' returns the number of elements in a array @array $#array = number of elements
# the count starts from 0
foreach my $i (0 .. $#array) {
  print "$i - $array[$i]\n";
}

# scalar is used to get the number of elements in an arra
print "There are ", scalar @array, " in the array.\n";


# ranges are defined like in bash. So numbers from 1 to 10 are '1..10'
@array = (1..10);
print "@array \n";


# Getting parts of the array is easy, just use the ranges from above
print "Elements from 5 to 10 are: ", @array[5..10], "\n";


# Array operations
@array = qw(apple orange banana plum grape);
print "Array values: @array[0..$#array]\n";

# Pops last element
my $last = pop @array;
print "Pop:  $last\n";

# Push adds an element at the end of the array
push @array, "strawberry";
print "Array values: @array[0..$#array]\n";

# Shift removes the first member of the array
shift @array;
print "Array values: @array[0..$#array]\n";

# Unshift adds elements at the beginning of the array
unshift @array, "watermellon";
print "Array values: @array[0..$#array]\n";


# Printing arrays
# prints all members with ' ' as delimiter
print "@array\n";
# no delimiter
print @array, "\n";

# '|' as the delimiter
print join("|", @array), "\n";

# Use of 'x' operator to easily format arrays
@array = qw(wilma fred barney betty);
my $format = "The members are:\n" . ("%10s" x @array);
## print "the format is >>$format<<\n"; # for debugging
printf $format . "\n", @array;


# More aray operators
@array = qw(bedrock slate rubble ranite);
print "Array: @array\n";

# Sort
my @array_mod = sort(@array);
print "Sorted array:  @array_mod\n";

# reverse sort
@array_mod = reverse sort(@array);
print "Reverse sorted array:  @array_mod\n";
