#!/usr/bin/python
# Napraviti klasu BankAccount koja od atributa instance
# sadrzi firstname, lastname, balance a od klasnih atr.
# nums koji predstavlja ukupan broj klijenta.
#
# Napisati metode withdraw, deposit i __str__ koji
# implementiraju logiku bankovnog racuna.


class BankAccount(object):
    clients_count = 0

    def __init__(self, firstName, lastName, balance):
        self.firstName = firstName
        self.lastName = lastName
        self.balance = balance
        self.__class__.clients_count += 1

    def printBalance(self):
        print("\tRemaining balance: %s" % self.balance)

    def withdraw(self, ammount):
        if ammount > self.balance:
            print("%s %s doesn't have enough credit!" %
                  (self.firstName, self.lastName))
            print("Available credit: %s" % self.balance)
        else:
            self.balance -= ammount
            self.printBalance()

    def deposit(self, ammount):
        self.ammount += ammount
        self.printBalance()

    def __str__(self):
        return "Name: %s %s\nBalance: %s" % (self.firstName, self.lastName, self.balance)

    def __unicode__(self):
        return "Name: %s %s\nBalance: %s" % (self.firstName, self.lastName, self.balance)


def main():
    account = BankAccount('Stefan', 'Mojsilovic', '9001')
    print(account)

if __name__ == "__main__":
    main()
