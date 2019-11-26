#!/usr/bin/env python

from sys import *

while True:
    print('Type exit to exit.')
    response = input()
    if response == 'exit':
        exit()
    print('You typed ' + response)
