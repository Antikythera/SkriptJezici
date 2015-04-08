#!/usr/bin/perl
use strict;
use Vector2D;

my $vector1 = Vector2D->new(4, 2);

printf "X = %g\n", $vector1->getX;
printf "Y = %g\n", $vector1->getY;


my $vector2 = Vector2D::multiply( $vector1, 2 );
printf "(%g, %g) * 2 = (%g, %g)\n", $vector1->getXY, $vector2->getXY;

my $vector3 = Vector2D::minus( $vector2, $vector1 );
printf "(%g, %g) - (%g, %g) = (%g, %g)\n", $vector2->getXY, $vector1->getXY, $vector3->getXY;

my $vector4 = Vector2D::plus( $vector2, $vector1 );
printf "(%g, %g) + (%g, %g) = (%g, %g)\n", $vector2->getXY, $vector1->getXY, $vector4->getXY;

my $vector5 = Vector2D::divide( $vector4, 3 );
printf "(%g, %g) / 3 = (%g, %g)\n", $vector4->getXY, $vector5->getXY;
