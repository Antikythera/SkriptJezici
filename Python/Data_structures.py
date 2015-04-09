#!/usr/bin/python

### Lists

fruit = [ 'orange', 'watermellon', 'grapes', 'banana' ]
print fruit

## Slicing lists
# print elements starting from 2 (excluding) till element 5
print fruit[2:5]

# print all elements starting from 3 (excluding)
print fruit[3:]


### Tuples
colors = ( 'blue', 'green', 'red' )

## Slicing tuples
# print elements starting from 1 (excluding) till element 3
print colors[1:3]

# print all elements starting from 3 (excluding)
print colors[2:]


### Dictionaries
mydict = {
    'Color': 'blue',
    'Size': 'M',
    'Type': 'Shirt',
}

# access dict using a key
print "The color of my shirt is " + mydict['Color']

# print all keys
print mydict.keys()

# print all values
print mydict.values()
