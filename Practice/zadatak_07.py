#!/usr/local/bin/python3
# Sledecu Python funkciju implementirati kao rekurzivnu.import pdb


def join_list(list, separator=" "):
    result = ""
    while len(list) > 0:
        result += str(list.pop(0))
        if len(list) > 0:
            result += separator
    return result


def join_list_recurse(lista, separator=" ", result=""):
    if len(lista) > 1:
        result += str(lista.pop(0)) + separator
        return join_list_recurse(lista, result=result)
    elif len(lista) <= 1:
        result += str(lista.pop(0))
        return result


def main():
    mylist = ['banana', 'orange', 'apple']
    print(join_list(mylist))

    mylist = ['banana', 'orange', 'apple']
    print(join_list_recurse(mylist))

if __name__ == "__main__":
    main()
