#!/usr/bin/perl
use strict;

=begin comment
  keyword 'my' defines local variables, If you exclude it, a global variable
  is made. You want to avoid doing that unless nececary.
=end comment
=cut

##
# Scalar vars start with '$'
my $integer = 12;
print "Your integer = $integer\n";

##
# Hashes and maps start with '%'
my %fruit = (
  apples => 3,
  oranges => 6
);
print "Printing the fruit hash: %fruit \n";
# Accessing hash using a key
print "Number of oranges: $fruit{'oranges'}\n";

##
# Arrays start witj '@'
my @list;
@list = (1,2,3);
print "@list\n";
print "Element 0 is equal to: $list[0]";

##
# Numbers in perl
my $sc_number = 7.25e45;
print "7.25 times 10 to the 45th power = $sc_number\n";

my $long_number = 68908989;
print "$long_number\n";
# This is hard to read, so using '_' can make it easier to read long numbers
$long_number = 68_908_989;
print "$long_number\n";

##
# Strings

# '.' concatenates strings
print "Hello" . "World\n";

# 'x' multiplies strings
print "Yo! " x 3 . "\n";

# Multiline strings
my $multiline = 'This is
a multiline
string
';
print "$multiline\n";

# converting characters or strings to upper case using \u and \U
# You can do the same to lower case using \l and \L
print "\ufirst letter is upper case.\n";
print "\Uwhole string is upper case.\n";

# Single quote is used to print literal strings, variables wont be evaluated
print 'Foo is $foo';

# \f is a special character like \n for newline, \t for tab etc...
print "This is formfeed \f This should be a new page!"
