from fpdf import FPDF
import random
import string
import sqlite3

class User:
    #A user that buy a ticket

    def __init__(self, name):
        self.name = name

    def buy(self, seat, card):
        #The user buys the ticket if the card is valid

        if seat.is_free():
            if card.validate(price=seat.get_price()):
                seat.occupy()
                ticket = Ticket(user = self, price = seat.get_price(), seat_number = seat_id)
                ticket.to_pdf()
                return "Purchase succesful!"
            else:
                return "There was a problem with your card!"

        else:
            return "The seat was reserved succesfully!"


class Seat:
    #A cinema seat that can be reserved

    database = "cinema.db"

    def __init__(self, seat_id):
        self.seat_id = seat_id

    def get_price(self):
        #Get the price of the requested seat
        connection = sqlite3.connect(self.database)
        cursor = connection.cursor()
        cursor.execute("""SELECT "price" FROM "Seat" WHERE "seat_id" = ? """, [self.seat_id])
        price = cursor.fetchall()[0][0]
        return price

    def is_free(self):
        #Checking if the seat is taken
        connection = sqlite3.connect(self.database)
        cursor = connection.cursor()
        cursor.execute("""SELECT "taken" FROM "Seat" WHERE "seat_id" = ? """, [self.seat_id])
        result = cursor.fetchall()[0][0]

        if result == 0:
            return True
        else:
            return False

    def occupy(self):
        #Changing the value of the seat in the database (from free too occupied).
        if self.is_free():
            connection = sqlite3.connect(self.database)
            connection.execute("""UPDATE "Seat" SET "taken"=? WHERE "seat_id" = ? """, [1, self.seat_id])
            connection.commit()
            connection.close()


class Card:
    #Creating a card object to help the user to buy the seat

    database = "banking.db"

    def __init__(self, type, number, cvc, holder):
        self.type = type
        self.number = number
        self.cvc = cvc
        self.holder = holder

    def validate(self, price):
        #Checking if the card is valid and substract the money from it.
        connection = sqlite3.connect(self.database)
        cursor = connection.cursor()
        cursor.execute("""SELECT "balance" FROM "Card" WHERE "number" = ? and "cvc" = ?""", [self.number, self.cvc])
        result = cursor.fetchall()

        if result:
            balance = result[0][0]
            if balance>=price:
                connection.execute("""UPDATE  "Card" SET "balance"=? WHERE "numbwr"=? and "cvc"=? """, \
                                   [balance-price. self.number, self.cvc])
                connection.commit()
                connection.close()
                return True

class Ticket:
    #A cinema ticket purchased

    def __init__(self, user, price, seat_number):
        self.user = user
        self.price = price
        self.id = "".join([random.choice(string.ascii_letters) for i in range(8)])
        self.seat_number = seat_number

    def to_pdf(self):
        #Creating a pdf ticket
        pdf = FPDF(orientation='P', unit='pt', format='A4')
        pdf.add_page()

        pdf.set_font(family='Times', style='B', size=24)
        pdf.cell(w=0, h=80, txt="Your Ticket", border=1, ln=1, align="C")

        pdf.set_font(family='Times', style="B", size=14)
        pdf.cell(w=100, h=25, txt="Your name: ", border=1)
        pdf.set_font(family='Times', style="", size=12)
        pdf.cell(w=0, h=25, txt=self.user.name, border=1, ln=1)
        pdf.cell(w=0, h=5, txt="", border=0, ln=1)

        pdf.set_font(family='Times', style="B", size=14)
        pdf.cell(w=100, h=25, txt="Ticket ID: ", border=1)
        pdf.set_font(family='Times', style="", size=12)
        pdf.cell(w=0, h=25, txt=self.id, border=1, ln=1)
        pdf.cell(w=0, h=5, txt="", border=0, ln=1)

        pdf.set_font(family='Times', style="B", size=14)
        pdf.cell(w=100, h=25, txt="Price: ", border=1)
        pdf.set_font(family='Times', style="", size=12)
        pdf.cell(w=0, h=25, txt=self.price, border=1, ln=1)
        pdf.cell(w=0, h=5, txt="", border=0, ln=1)

        pdf.set_font(family='Times', style="B", size=14)
        pdf.cell(w=100, h=25, txt="Seat number: ", border=1)
        pdf.set_font(family='Times', style="", size=12)
        pdf.cell(w=0, h=25, txt=self.seat_number, border=1, ln=1)
        pdf.cell(w=0, h=5, txt="", border=0, ln=1)

        pdf.output("Ticket.pdf", 'F')


if __name__ == "__main__":
    name = input("Your name is: ")
    seat_id = input("Your prefered seat number is: ")
    card_type = input("Your card type is: ")
    card_number = input("Your card number is: ")
    card_cvc = input("Your card cvc is: ")
    card_holder = input("The card hoder name is: ")

    user = User(name=name)
    seat = Seat(seat_id=seat_id)
    card = Card(tyoe=card_type, number=card_number, cvc=card_cvc, holder=card_holder)

    print(user.buy(seat=seat, card=card))