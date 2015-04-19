#!/usr/local/bin/python3


class ListsAreDifferentSize(RuntimeError):
    def __init__(self, arg):
        self.message = arg


def math(a, b):
    if a < b:
        return a + b
    else:
        return a * b


def list_increment(var_list):
    my_list = []
    for i in var_list:
        my_list.append(i + 1)
    return my_list


def recursive_list_add(listA, listB, index=0):
    _listA = list(listA)
    _listB = list(listB)
    try:
        if len(_listA) != len(_listB):
            raise ListsAreDifferentSize("Liste su razlicitih duzina")
        else:
            if index <= len(_listA) - 1:
                _listA[index] = _listA[index] + _listB[index]
                _listB[index] = 0
                index += 1
                return recursive_list_add(_listA, _listB, index)
            else:
                return _listA

    except ListsAreDifferentSize as exception:
        print(exception.message)


print("a * b = %d" % math(30, 2))
print("a + b = %d" % math(2, 12))

test_list = list(range(1, 20))
print("Initial list: ", test_list)
print("After increment: ", list_increment(test_list))

listA = [1, 2, 3]
listB = [3, 2, 1]
print("List A: %s" % listA)
print("List B: %s" % listB)
print("List %s + %s = %s" % (listA, listB, recursive_list_add(listA, listB)))
