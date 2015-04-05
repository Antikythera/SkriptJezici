#!/usr/bin/perl
use strict;
use Animal;
use Duck;

my $animal = Animal->new;
$animal->speak;

$animal = Duck->new;
$animal->speak;
