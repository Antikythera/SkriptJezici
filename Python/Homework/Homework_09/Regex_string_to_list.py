#!/usr/local/bin/python3
import re


def str_to_list(string):
    """
    Takes a string, returns a list of elements, filters non letter symbols
    """
    return re.findall(r'\w+', string)


line = "Commander, your base is under attack!"
print(line)

line = str_to_list(line)
print(line)
