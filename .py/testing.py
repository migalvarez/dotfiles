#!/usr/bin/env python
inventory = {'arrow': 12, 'gold coin': 42, 'rope': 1, 'torch': 6, 'dagger': 1}
dragonLoot = ['gold coin', 'dagger', 'gold coin', 'gold coin', 'ruby']
print(inventory.values())
for loot in dragonLoot:
    inventory.setdefault(loot, 0) 
    for item in inventory.keys():
        if item == loot:
            inventory[loot] += 1
        

print(inventory.values())
