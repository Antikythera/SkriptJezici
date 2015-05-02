#!/usr/bin/python


class Person:
    def __init__(self, name, lastName, age, connection):
        self.name = name
        self.lastName = lastName
        self.age = age
        self.connection = connection

    def __del__(self):
        self.connection.close()

    def fetchPersons(self):
        cursor = self.connection.cursor()
        cursor.execute("SELECT * FROM Persons")
        data = cursor.fetchall()
        return data

    def persistPerson(self):
        cursor = self.connection.cursor()
        personTuple = (self.name, self.lastName, self.age)
        try:
            cursor.execute("""INSERT INTO Persons (`name`,`lastName`,`age`)
            VALUES (\'%s\', \'%s\', \'%s\')""" % personTuple)
            self.connection.commit()
            print("Person %s %s %s added." % personTuple)
        except:
            self.connection.rollback()
            print("Failed to insert a person!")
