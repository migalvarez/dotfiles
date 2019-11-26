#!/usr/bin/env python

#s = 'azcbobobegghakl'
s = 'zbcdefghii'
lStr = ''

stt = 0
fsh = 0
cnt = 0
while cnt < len(s)-1:
    fsh += 1
    if s[stt+cnt] <= s[stt+cnt+1]:
        lStr =  s[stt:stt+cnt+1]
    else:
        stt = fsh
    


print('Longest substring in alphabetical order is: ' + str(lStr))
