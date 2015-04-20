#!/usr/local/bin/python3


class reverse_file:
    ''' takes a file path, reverses the files contents
        upon calling reverse method '''
    def __init__(self, file_path):
        self.file_path = file_path

    def reverse(self):
        print('Trying to open file %s for reading.' % self.file_path)
        with open(self.file_path, 'r') as file:
            file_lines = file.read()
            print('Sucess!')

        file_lines = file_lines[::-1]

        with open(self.file_path, 'w') as file:
            print('Trying to write to file %s.' % self.file_path)
            file.write(file_lines)
            print('Sucess!')


if __name__ == '__main__':
    try:
        rf = reverse_file('./text.txt')
        rf.reverse()
    except FileNotFoundError as e:
        print('File not found!')
