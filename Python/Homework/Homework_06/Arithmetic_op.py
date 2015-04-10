#!/usr/bin/python


def arithmetic_operations(num1, num2, operation):
    if operation == "+":
        return num1 + num2
    elif operation == "-":
        return num1 - num2
    elif operation == "*":
        return num1 * num2
    elif operation == "/":
        return num1 / num2
    else:
        print "You need to pass a valid operator!"


print "5 - 4 = " + str(arithmetic_operations(5, 4, "-"))

print "2 + 2 = " + str(arithmetic_operations(2, 2, "+"))

print "2 * 3 = " + str(arithmetic_operations(2, 3, "*"))

print "9 / 3 = " + str(arithmetic_operations(9, 3, "/"))

# This should fail
arithmetic_operations(5, 5, "foo")
