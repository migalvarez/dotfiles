#!/usr/bin/env python
# Function that returns a string from a list.

# Default list to transform to a string.
spam = ['peach','apple', 'bananas', 'tofu', 'cats'] 

# Function to transform a list to a string.
def listToStr(var):
    # If the variable introduced to the function is not a list, return error.
    if type(var) !=  list:
        return 'Error: variable used is not a list.'
    # If the variable is a list, go on.
    else:
        # Default string to concatenate with other strings from the list.
        stringed = ''
        for i in range(0, len(var)):
            # If the list just has 1 element, return the element with a period.
            # Note that it is returning the elements from the list backwards in order to add the exception to a single element list.
            if i == 0:
                stringed += str(var[-1-i]) + '.'
            # If the list has 2 elements, return element1 and element2.
            elif i == 1:
                stringed = str(var[-1-i]) + ' and ' + stringed
            # If the list has more than 2 elements, return every element separated by a comma.
            else:
                stringed = str(var[-1-i]) + ', ' + stringed
    # Return the list converted in a string.
    return stringed

print(type(listToStr(spam))) 

