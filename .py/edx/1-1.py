#!/usr/bin/env python
vow = 'aeiou'
s = 'tllinmnoasepccqceaadi'
count = 0
for let in s:
    if let in vow:
        count+=1
print(count)
