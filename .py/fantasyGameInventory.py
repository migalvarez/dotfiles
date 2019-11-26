#!/usr/bin/env python

def displayInventory(inv):
    count = 0
    print('Inventory:')
    for item, value in inv.items():
        count += inv.get(item,0)
        print(str(value) + ' ' + str(item))
    print('Total number of items: ' + str(count))

def addToIventory(inv, addedItems):
    for loot in addedItems:
        inv.setdefault(loot, 0)
        for item in inv.keys():
            if item == loot:
                inv[loot] += 1

inventory = {'arrow': 12, 'gold coin': 42, 'rope': 1, 'torch': 6, 'dagger': 1}

displayInventory(inventory)

dragonLoot = ['gold coin', 'dagger', 'gold coin', 'gold coin', 'ruby']
 
print('Felicidades, asesinaste a un dragón y conseguiste su botín!')
addToIventory(inventory, dragonLoot)
displayInventory(inventory)
