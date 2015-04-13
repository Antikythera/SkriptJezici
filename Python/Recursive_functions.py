#!/usr/bin/python


def mysum(L):
    if not L:
        return 0
    else:
        return L[0] + mysum(L[1:])


def factorial(n):
    if n == 1:
        return 1
    else:
        return n * factorial(n - 1)


myinput = list(range(1, 15))
print "Sum of " + str(myinput) + " is: " + str(mysum(myinput))

print "Factorial of %d is %d." % (10, factorial(10))
