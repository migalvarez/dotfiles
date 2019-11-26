#!/usr/bin/env python
def fun(var):
    val = var**6-var-1
    return val

n = 1
fa = 0
fc = 0
xa = 1
xb = 2

while n <= 14:
    xr = (xa+xb)/2
    fa = fun(xa)
    fr = fun(xr)
    if fa*fr<0:
        xb = xr
    else:
        xa = xr
    n += 1

print(str(fr))
