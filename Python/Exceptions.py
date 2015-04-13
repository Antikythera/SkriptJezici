#!/usr/bin/python


class Networkerror(RuntimeError):
    """
    Defining your own exception
    """
    def __init__(self, arg):
        self.message = arg

try:
    file = open("./test.txt", "w")
    file.write("This is my test file for exception handling.")
except IOError:
    print ("Error: can\'t find file or read data")
else:
    print "Content was successfully written to the file."
    file.close()
finally:
    print "This block always executes"


try:
    raise Networkerror("Bad hostname")
except Networkerror, e:
    print e.message
