#!/usr/bin/python


def add( a, b ):
    """
    Function returns a product of two numbers
    """
    return a + b


def printinfo( arg1, *vartuple ):
    """
    function with more additional arguments
    """
    print('Output is: ')
    print(arg1)

    for var in vartuple:
        print(var)
    return


def fib( n ):
    """
    Return a list of fibonacci series up to n
    """
    result = []
    a, b = 0, 1
    while a < n:
        result.append(a)
        a, b = b, a + b
    return result


def ask_ok(prompt, retries=4, complaint="Yes or No please!"):
    """
    Function that asks user for yes or no, returns true or false respectively
    """
    while True:
        ok_string = raw_input(prompt + " ")
        if ok_string in ('y', 'ye', 'yes'):
            print("You have chosen yes.")
            return True
        elif ok_string in ('n', 'no', 'nop', 'nope'):
            print("You have chosen no.")
            return False
        retries -= 1
        print(complaint)
        if retries <= 0:
            raise IOError('refusenik user')


def subtract(a, b):
    """
    Returns result of a - b subtraction, also exploring some print formating
    """
    print "SUBTRACTING %d - %d" % (a, b)
    return a - b


print('2 + 5 = ' + str(add(2, 5)))

# you can specify the argument by name
print('5 + 2 = ' + str(add(b=2, a=5)))

printinfo(10, 20, 30, 40 )


# lambda functions can't contain commands, they can only return one value
sum = lambda arg1, arg2: arg1 + arg2
print("Value of total: " + str(sum(10, 20)))


print(str(fib(100)))

ask_ok("Overwrite the file?", retries=2, complaint="Yes or No!"):

    print("%d - %d = %d" % (2123, 1231, subtract(2123, 1231)))
