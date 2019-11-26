#!/usr/bin/env python
def spam(divideBy):
    return 42 / divideBy

try:
    print(spam(2))
    print(spam(0))
    print(spam(1))
    print(spam(3))
except ZeroDivisionError:
    print('Error: Invalid argument.')
