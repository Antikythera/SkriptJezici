#!/usr/bin/python


def first(list_arg):
    return list_arg[0:1]


def last(list_arg):
    return list_arg[-1]


def tail(list_arg):
    return list_arg[1:]


def init(list_arg):
    return list_arg[0:-1]


fruit = ['banana', 'apple', 'pineapple', 'orange']
print fruit

print "First element of the list: " + str(first(fruit))

print "Last element of the list: " + str(last(fruit))

print "Tail of the list: " + str(tail(fruit))

print "Init of the list: " + str(init(fruit))
