#!/usr/local/bin/python3
# Napraviti Python klasu Person koja od atributa instance
# sadrži atribute name i age a od atributa klase atribut num
# čija je inicijalna vrednost 0 koja se ikrementuje svaki put
# kada se kreira novi objekat klase. Implementirati klasnu
# metodu information koja ispisuje trenutan broj instanciranih
# objekata. Potom napraviti podklasu SubPerson koja nasleđuje
# klasu Person a koja pored osnovnih atributa sadrži atribut
# gender. Implementirati aksesore i mutatore i demonstrirati rad.


class Person(object):
    num = 0

    def __init__(self, name, age):
        self.name = name
        self.age = age
        Person.num += 1

    def information():
        print("Number of instantiated persons: " + str(Person.num))

    def __str__(self):
        return "Name: %s Age: %d" % (self.name, self.age)


class SubPerson(Person):
    def __init__(self, name, age, gender):
        self.gender = gender
        super(SubPerson, self).__init__(name, age)

    def __str__(self):
        return super(SubPerson, self).__str__() + " Gender: %s" % self.gender


def main():
    person1 = Person('Stefan', 25)
    person2 = Person('Nikola', 24)
    person3 = SubPerson('Milica', 25, 'Female')

    print(person3)
    Person.information()

if __name__ == "__main__":
    main()
