#!/usr/local/bin/python3
from os import listdir, path

if __name__ == '__main__':
    while True:
        dirpath = input('Enter the path: ')
        if path.isdir(dirpath):
            for file in listdir(dirpath):
                print(file)
        else:
            print('Path not a directory.')
