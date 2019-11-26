#!/usr/bin/env python
import sys

def collatz(number):
    if (number % 2) == 0:
        print(number // 2)
        return  (number // 2)
    else:
        print (3 * number + 1)
        return (3 * number +1)

while True:
    print('Ingresa un número entero positivo:',end=' ')
    try:
#        usrChoice = int(input()) 
        usrChoice = 5 
        if usrChoice <= 0:
            print('Tu número no cumple el requisito.')
            continue
        else:
            value = collatz(usrChoice)
            if value == 1:
                sys.exit()
            while value != 1:
                value = collatz(value)
                if value == 1:
                    sys.exit()
    except ValueError:
        print('Error: ingresar número.')
