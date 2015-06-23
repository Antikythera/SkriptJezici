#!/usr/bin/python
# Koristeci try i except blok omoguciti korisnika da
# preko standardnog input streama unosi podatke sve
# dok ne unese vrednost tipa int. Dokle god korisnik
# unosi vrednosti drugih tipova, potrebno je baciti
# ValueError exception sa porukom "Int is needed."

while True:
    input_str = raw_input("Enter an integer: ")
    try:
        input_str = int(input_str)
        print("You entered an integer %d" % input_str)
        quit()
    except (TypeError, ValueError):
        print("You must enter an integer!")
