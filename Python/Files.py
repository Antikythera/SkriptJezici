#!/usr/local/bin/python3

with open("test.txt", "a+") as file:
    file.write("Just a test file for python.\n")
    file.read()
    file.read(64)       # read 64 bytes
    file.readline()
    file.readlines()    # read all lines, can be exported to a list
