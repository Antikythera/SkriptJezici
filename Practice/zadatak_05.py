#!/usr/local/bin/python3
# Napraviti MySQL tabelu Predmeti(id, sifra, naziv) i
# python metode koje demonstriraju sledece operacije:
#
# -selekt svih predmete
# -selekt predmet sa id-jem kao parametrom
# -insert novog predmeta
# -update predmeta sa id-jem kao parametrom
# -delete zapisa
# -selekt join
#
import mysql.connector
config = {
    'user': 'stefan',
    'password': 'pass',
    'host': '127.0.0.1',
    'database': 'Predmeti',
    'raise_on_warnings': True,
    'use_pure': False,
}


class Predmeti(object):

    def __init__(self, predmetID, sifra, naziv, connection):
        self.predmetID = predmetID
        self.sifra = sifra
        self.naziv = naziv
        self.connection = connection

    def selectAll(self):
        cursor = self.connection.cursor()
        cursor.execute("SELECT * FROM predmeti")
        data = cursor.fetchall()
        return data

    def select(self, id_num):
        cursor = self.connection.cursor()
        cursor.execute("SELECT * FROM predmeti WHERE predmetID = %s" % id_num)
        data = cursor.fetchall()
        return data

    def persist(self):
        cursor = self.connection.cursor()
        predmetTuple = (self.predmetID, self.sifra, self.naziv)
        try:
            cursor.execute("""INSERT INTO predmeti (`predmetID`,`sifra`,`naziv`)
            VALUES (\'%s\', \'%s\', \'%s\')""" % predmetTuple)
            self.connection.commit()
            print("Predmet %s %s %s added." % predmetTuple)
        except:
            self.connection.rollback()
            print("Failed to insert predmet!")

    def update(self):
        cursor = self.connection.cursor()
        predmetTuple = (self.sifra, self.naziv)
        try:
            cursor.execute("""UPDATE predmeti SET (`sifra`,`naziv`)
            VALUES (\'%s\', \'%s\')
            WHERE predmetID=%s""" % (predmetTuple, self.predmetID))
            self.connection.commit()
            print("Predmet %s %s %s updated." % predmetTuple)
        except:
            self.connection.rollback()
            print("Failed to update predmet!")

    def delete(self):
        cursor = self.connection.cursor()
        try:
            cursor.execute("""DELETE FROM predmeti
                              WHERE predmetID = %s""" % self.predmetID)
            self.connection.commit()
            print("Predmet deleted.")
        except:
            self.connection.rollback()
            print("Failed to delete predmet!")


def main():
    try:
        cnx = mysql.connector.connect(**config)

    except mysql.connector.Error as err:
        if err.errno == mysql.connector.errorcode.ER_ACCESS_DENIED_ERROR:
            print("Something is wrong with your user name or password")
        elif err.errno == mysql.connector.errorcode.ER_BAD_DB_ERROR:
            print("Database does not exist")
        else:
            print(err)
    finally:
        if cnx:
            cnx.close()

if __name__ == "__main__":
    main()
