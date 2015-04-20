#!/usr/local/bin/python3


def is_number(s):
    try:
        float(s)
        return True
    except ValueError:
        return False


def square(list):
    for i in list:
        if is_number(i):
            yield int(i) ** 2

input_file_path = './input.txt'
output_file_path = './output.txt'


if __name__ == '__main__':

    with open(input_file_path, 'r') as file:
        lines, lines_squared = [], []

        for line in file.read():
            lines.append(line)

    for member in lines:
        lines_squared.append(next(square(lines)))

    print(lines_squared)
