#!/usr/bin/env python
# Write a program that examines three variables and prints the largest odd number among them. If none of them are odd, it should print a message to that effect.
x, y, z = 2, 4, 7
largestOdd = None

if x > y and x > z:
    if x > y:
        x, y = y, x
        if x > z:
            y, z = z, y
    else:
        x, z = z, x
        if x > y:
            x, y = y, x
elif y > z:
    y, z = z, x

if z%2:
    largestOdd = z
    print('The largest odd number is: ' + str(largestOdd))
elif y%2:
    largestOdd = y
    print('The largest odd number is: ' + str(largestOdd))
elif x%2:
    largestOdd = x
    print('The largest odd number is: ' + str(largestOdd))
else:
    print('There are no odd numbers.')
