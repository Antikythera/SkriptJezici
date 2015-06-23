#!/usr/local/bin/python3
# Napisati klasu Sorter koja od atributa sadrzi putanju
# do fajla kao i access mod. Pored toga, klasa treba da
# ima metodu fileHandle u okviru koje se vrsi otvaranje
# fajla (koji sadrzi brojeve od 1 do 10 u svakoj liniji)
# smestanje svakog broja u listu i provere da li lista
# sadrzi duplikate.
#
# U zavisnosti od rezultata vratiti true/false vrednost.


class Sorter:
    def __init__(self, filePath, accessMode='r'):
        self.filePath = filePath
        self.accessMode = accessMode

    def _fileHandle(self):
        try:
            with open(self.filePath, self.accessMode) as file:
                lines = file.readlines()
                return lines
        except:
            print("Couldn't open file %s" % self.filePath)
            return False

    def containsDuplicates(self):
        lines = self._fileHandle()
        return len(lines) != len(set(lines))


def main():
    file = Sorter('./zadatak_04.txt')
    if file.containsDuplicates():
        print("File has duplicates.")
    else:
        print("File has no duplicates.")

if __name__ == "__main__":
    main()
