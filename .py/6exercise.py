#!/usr/bin/env python
import random
msg = ['It is certain',
        'It is decidedly so',
        'Reply hazy try again',
        'Ask again later',
        'Concentrate and ask again',
        'My reply is no',
        'Otlook not so good',
        'Very doubtful']

print(msg[random.randint(0, len(msg) - 1)])
