#Move the remaining inventory down by 9 slots.
scoreboard players set @s Math 9
execute store result score $slot Math run data get entity @s data.Inventory[0].Slot
execute store result score $pass Math if score $slot Math matches 9..
scoreboard players operation $slot Math -= @s Math
execute store result entity @s data.Inventory[0].Slot int 1 run scoreboard players get $slot Math
execute if score $pass Math matches 1 run data modify entity @s data.Item append from entity @s data.Inventory[0]

#Remove this item from the inventory. If there's still more, do it again.
data remove entity @s data.Inventory[0]
data modify storage world TEMP set from entity @s data.Inventory
execute store success score @s Math run data modify storage world TEMP set value []
execute if score @s Math matches 1 run function explorers_eve:world/blue_skies/shift_inventory