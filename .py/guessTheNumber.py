#!/usr/bin/env python
import random

secretNumber = random.randint(1,20)

print('Estoy pensando en un número entre el 1 y el 20.')
print('Adivina.')
triesLeft = 0

while triesLeft < 6:
    print('Tienes ' + str(6-triesLeft) +' intento(s) restante(s)')
    guess = int(input())
    triesLeft += 1
    
    if guess > secretNumber:
        print('Tu número es muy alto.')
        continue
    elif guess < secretNumber:
        print('Tu número es muy bajo.')
        continue
    else:
        break

if secretNumber == guess:
    print('¡Buen trabajo! Adivinaste mi número en ' + str(triesLeft) + ' intentos.')
else:
    print('¡Qué mala suerte! El número en el que estaba pensando era '+ str(secretNumber)+ '.') 
