#!/usr/bin/perl
use strict;

sub min {
  my ($min, @vars) = @_;
    for my $i (@vars) {
        $min = $i if $i < $min;
    }
    return $min;
}

sub zip {
  # $a_ref is a pointer to the array.
  # shift in this context unloads the arguments passed to the function
  my $a_ref = shift;
  my $b_ref = shift;
  my @a = @{$a_ref};
  my @b = @{$b_ref};

  my @merged;
  my $i;

  if ($#a == $#b) {
    print "Nizovi su jednake duzine: $#a\n";
    $i = $#a;
  } else {
    print "Nizovi su razlicite velicine!\n";
    $i = min($#a, $#b);
  }

  foreach my $n (0..$i) {
    push ( @merged, ($a[$n], $b[$n]));
  }
  return @merged;

}

# Iste velicine
my @niz_char = ("a".."d");
my @niz_num = (1..4);
print "@niz_char\n";
print "@niz_num\n";

my @merged = zip(\@niz_num, \@niz_char);
print "Spojeni nizovi: @merged";

printf "\n\n------------------------------------------\n\n";

# Razlicite velicine
my @niz_char = ("a".."d");
my @niz_num = (1..10);
print "@niz_char\n";
print "@niz_num\n";

my @merged = zip(\@niz_num, \@niz_char);
print "Spojeni nizovi: @merged";
