'Collatz'

c0 = int(input('c0='))
step = 0
if c0 <= 0:
    print('introdu nr pozitiv')
    c0 = int(input('c0='))
else:
    while c0 != 1:

        if c0 % 2 == 0:
            c0 /= 2
            print(int(c0))
            step += 1
        else:
            c0 = 3 * c0 + 1
            print(int(c0))
            step += 1

    print(step)
