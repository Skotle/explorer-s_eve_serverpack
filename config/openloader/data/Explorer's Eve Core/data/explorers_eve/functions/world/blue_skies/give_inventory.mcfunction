#This is MAJORLY taken from Divinity's End! I, uh, hope that's okay. This function is practically witchcraft.
#Boots.
data modify entity @s data.Item set value []
data modify entity @s data.Item append from entity @s data.Inventory[{Slot:100b}]
data modify entity @s data.Item[0].Slot set value 0b
data modify block ~ ~ ~ Items set from entity @s data.Item
loot replace entity @p[tag=NeedsInventory] armor.feet 1 mine ~ ~ ~ air{drop_contents:1b}

#Leggings.
data modify entity @s data.Item set value []
data modify entity @s data.Item append from entity @s data.Inventory[{Slot:101b}]
data modify entity @s data.Item[0].Slot set value 0b
data modify block ~ ~ ~ Items set from entity @s data.Item
loot replace entity @p[tag=NeedsInventory] armor.legs 1 mine ~ ~ ~ air{drop_contents:1b}

#Chestplate.
data modify entity @s data.Item set value []
data modify entity @s data.Item append from entity @s data.Inventory[{Slot:102b}]
data modify entity @s data.Item[0].Slot set value 0b
data modify block ~ ~ ~ Items set from entity @s data.Item
loot replace entity @p[tag=NeedsInventory] armor.chest 1 mine ~ ~ ~ air{drop_contents:1b}

#Helmet.
data modify entity @s data.Item set value []
data modify entity @s data.Item append from entity @s data.Inventory[{Slot:103b}]
data modify entity @s data.Item[0].Slot set value 0b
data modify block ~ ~ ~ Items set from entity @s data.Item
loot replace entity @p[tag=NeedsInventory] armor.head 1 mine ~ ~ ~ air{drop_contents:1b}

#Offhand.
data modify entity @s data.Item set value []
data modify entity @s data.Item append from entity @s data.Inventory[{Slot:-106b}]
data modify entity @s data.Item[0].Slot set value 0b
data modify block ~ ~ ~ Items set from entity @s data.Item
loot replace entity @p[tag=NeedsInventory] weapon.offhand 1 mine ~ ~ ~ air{drop_contents:1b}

#Next, hotbar. This is the easiest part.
data modify block ~ ~ ~ Items set from entity @s data.Inventory
loot replace entity @p[tag=NeedsInventory] hotbar.0 9 mine ~ ~ ~ air{drop_contents:true}

#Lastly, main inventory. To do this, push all items 'down' by 9 so they fit in the box.
data modify entity @s data.Item set value []
function explorers_eve:world/blue_skies/shift_inventory
data modify block ~ ~ ~ Items set from entity @s data.Item
loot replace entity @p[tag=NeedsInventory] container.9 27 mine ~ ~ ~ air{drop_contents:true}

#With the marker's inventory cleared, it's no longer needed.
data modify block ~ ~ ~ Items set value []
data remove storage world TEMP
kill @s
