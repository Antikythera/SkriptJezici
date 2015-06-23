#!/usr/local/bin/python3
from tkinter import Tk, Frame, BOTH


class mainProzor(Frame):
    def __init__(self, parent):
        Frame.__init__(self, parent, background="white")

        self.parent = parent

        self.initUI()

    def initUI(self):

        self.parent.title("Simple")
        self.pack(fill=BOTH, expand=1)


def main():

    root = Tk()
    root.geometry("250x150+300+300")
    app = mainProzor(root)
    root.mainloop()


if __name__ == '__main__':
    main()
