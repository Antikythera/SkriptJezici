#!/usr/bin/python
# Napraviti datoteku sa ekstenzijom .txt i napuniti
# je sledecim podacima:
#
# I love operativne sisteme
# I love bezbednost i zastitu informacija
# I love osnove informacionih tehnologija
# I love baze podataka
#
# Potom otvoriti datoteku za citanje, proci kroz
# svaku liniju i iscitati samo nazive predmeta.
from os import remove

file_content = """I love operativne sisteme
I love bezbednost i zastitu informacija
I love osnove informacionih tehnologija
I love baze podataka
"""
file_path = './zadatak_01.txt'


def main():
    # Writing file
    with open(file_path, 'w') as file:
        file.write(file_content)

    # Reading file
    with open(file_path, 'r') as file:
        for line in file:
            print(line[7:-1])

    # Removing the file
    try:
        remove(file_path)
    except OSError as e:
        print(file_path + " : " + e.strerror)

if __name__ == "__main__":
    main()
