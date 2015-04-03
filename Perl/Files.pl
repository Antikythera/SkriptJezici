#!/usr/bin/perl
use strict;
=begin comment
  Some basic file operations here
=end comment
=cut

## 'cat' equivalent
my $file = '/etc/passwd';
open(PASSWD, $file);
my @lines = <PASSWD>;
close(PASSWD);
print "@lines";


## Creating a file
my $file_path = '~/Desktop/test.txt';
print "Creating a file $file_path";
sysopen(TEST, $file_path, "O_RDWR"|"O_EXCL"|"O_CREAT", 0755);
printf TEST "Testing\n";
close(TEST);
