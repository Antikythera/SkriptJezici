#!/usr/bin/python

import mysql
from Person import Person
from mysql.connector import errorcode

try:
    cnx = mysql.connector.connect(user='root',
                                  password='kotoryu90s',
                                  host='127.0.0.1',
                                  database='people')

    person = Person('Pera', 'Peric', '25', cnx)
    print(person.fetchPersons())
    person.persistPerson()
    print(person.fetchPersons())

except mysql.connector.Error as err:
    if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
        print("Something is wrong with your user name or password")
    elif err.errno == errorcode.ER_BAD_DB_ERROR:
        print("Database does not exist")
    else:
        print(err)
finally:
    cnx.close()
