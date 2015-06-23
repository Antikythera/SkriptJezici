#!/usr/local/bin/python3
# Napisati Python funkciju check_duplicates koja kao parametar
# prima listu brojeva na osnovu kojih se   proverava da li
# postoje duplikati. Funkcija treba vratiti True ili False
# vrednost u zavisnosti od toga da li se u listi nalazi duplikat
# nekog elementa ili ne.
#
# Primer:
#
# check_duplicates([1, 2, 3, 4]) # => False
# check_duplicates([1, 4, 2, 1]) # => True


def check_duplicates(inlist):
    return len(inlist) != len(set(inlist))


def main():
    print(check_duplicates([1, 2, 3, 4])) # => False
    print(check_duplicates([1, 4, 2, 1])) # => True

if __name__ == "__main__":
    main()
