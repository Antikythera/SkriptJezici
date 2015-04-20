#!/usr/local/bin/python3


def is_number(s):
    ''' most efficient way to check if value is a number, believe it or not '''
    try:
        float(s)
        return True
    except ValueError:
        return False


def square(list):
    ''' generator function that acts like a list, you need to iterate through it
        to get values '''
    for i in list:
        if is_number(i):
            yield str(int(i) ** 2)
        else:
            yield i


if __name__ == '__main__':
    input_file_path = './input.txt'
    output_file_path = './output.txt'
    with open(input_file_path, 'r') as file:
        lines, lines_squared = [], []
        for line in file.read():
            lines.append(line)
        print("Read numbers from %s." % input_file_path)

    for i in square(lines):
        lines_squared.append(i)
    print("Squared numbers.l")

    with open(output_file_path, 'w') as file:
        for line in lines_squared:
            file.write(line)
        print("Wrote to %s." % output_file_path)
