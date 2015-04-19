#!/usr/local/bin/python3


class Vector:
    """ Simple vector class """
    def __init__(self, a, b):
        self.a = a
        self.b = b

    def __str__(self):
        return 'Vector (%d, %d)' % (self.a, self.b)

    def __add__(self, other):
        """ __add__ reserved function name for adding objects witj '+' """
        return Vector(self.a + other.a, self.b + other.b)

    # __doc__ reserved function name for storing documentation,
    # it can be accessed during runtime using help(class_name.function)


v1 = Vector(5, -3)
v2 = Vector(1, 7)

help(Vector)

print(v1)
print(v2)
print(v1 + v2)
