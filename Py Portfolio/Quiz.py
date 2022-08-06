from time import *
import threading

score = 0
nume = input("Numele tau este: ")
import sys
print("Salut,", nume, "! Succes!")
sleep(1)
print(nume, "Scorul tau este 0")
sleep(1)
print("Scrie litera din dreptul rapsunsului corect")
sleep(1)
print("Vei primi un set de intrebari")


def countdown():
    global timer

    timer = 30

    for x in range(30):
        timer -= 1
        sleep(1)

    print("Timpul a expirat!")

countdown_thread = threading.Thread(target = countdown)
countdown_thread.start()

while timer > 0:






    #######################################

    print("Start  test!")
    sleep(0.5)
    print('Intrebarea 1: ')
    sleep(1)
    print("Cat fac 2+2?")
    sleep(0.5)
    print("a. 5")
    sleep(0.5)
    print("b. 3")
    sleep(0.5)
    print('c. 2')
    sleep(0.5)
    print('d. 4')
    sleep(0.5)
    raspuns = input("Raspunsul tau este: ")
    if raspuns == 'd':
        print("Felicitari!")
        score += 10
        print("Scorul tau curent este: ", score)
    else:
        print("Incorect")
        print("Scorul tau curent este: ", score)
    print()
    sleep(2)

    if timer == 0:
        break

    ######################################################

    print('Intrebarea 2: ')
    sleep(1)
    print("Care este prenumele lui Eminescu?")
    sleep(0.5)
    print("a. Mihai")
    sleep(0.5)
    print("b. Gigi")
    sleep(0.5)
    print('c. Dorel')
    sleep(0.5)
    print('d. Matei')
    sleep(0.5)
    raspuns = input("Raspunsul tau este: ")
    if raspuns == 'a':
        print("Felicitari!")
        score += 10
        print("Scorul tau curent este: ", score)
    else:
        print("Incorect")
        print("Scorul tau curent este: ", score)
    print()
    sleep(2)
    if timer == 0:
        break
    ######################################################

    print('Intrebarea 3: ')
    sleep(1)
    print("Cand este Ziua Nationala a Romaniei?")
    sleep(0.5)
    print("a. 1 aprilie")
    sleep(0.5)
    print("b. 1 decembrie")
    sleep(0.5)
    print('c. 1 marie')
    sleep(0.5)
    print('d. 1 iunie')
    sleep(0.5)
    raspuns = input("Raspunsul tau este: ")
    if raspuns == 'b':
        print("Felicitari!")
        score += 10
        print("Scorul tau curent este: ", score)
    else:
        print("Incorect")
        print("Scorul tau curent este: ", score)
    print()
    sleep(2)
    if timer == 0:
        break

print("Scorul final este: ", score)