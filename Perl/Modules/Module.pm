#!/usr/bin/perl
package Module;

require Exporter;

@ISA = qw(Exporter);

@EXPORT = qw(Hello);

sub Hello {
  print "Hello $_[0].\n";
}

# Perl modules expect true value at the end of the package. Usually 1 is placed
# as a last line of a module

1;
