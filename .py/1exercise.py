#!/usr/bin/env python

while True:
    print('Who are you?')
    name=input()
    if name != 'Joe':
        continue
    print('Hello, Joe. What is the password? (It is a fish).')
    passwd = input()
    if passwd == 'swordfish':
        break
print('Access granted.')
