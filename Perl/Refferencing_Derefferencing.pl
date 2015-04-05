#!/usr/bin/perl
use strict;

## Refferencing and derefferencing is done with \$ and $$ sigils
my $foo = 'bar';
my $fooref = \$foo;

print "$foo  --  $$fooref\n";

$foo = 'foobar';

print "$foo  --  $$fooref\n";
