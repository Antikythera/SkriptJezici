#!/usr/local/bin/python3


def is_number(s):
    ''' most efficient way to check if value is a number, believe it or not '''
    try:
        float(s)
        return True
    except ValueError:
        return False


def square(inlist):
    retlist = []
    for i in inlist:
        if is_number(i):
            squared_member = int(i) ** 2
            retlist.append(str(squared_member))
        else:
            retlist.append(i)
    return retlist


def square_gen(list):
    # TODO function always returns the first element when 'next' is called
    ''' generator function that returns the next member each time next command
        is applied '''
    for i in list:
        if is_number(i):
            yield int(i) ** 2
        else:
            yield i


input_file_path = './input.txt'
output_file_path = './output.txt'

if __name__ == '__main__':
    with open(input_file_path, 'r') as file:
        lines, lines_squared = [], []
        for line in file.read():
            lines.append(line)

    lines_squared = square(lines)
    print(lines_squared)

    with open(output_file_path, 'w') as file:
        for line in lines_squared:
            file.write(line)
