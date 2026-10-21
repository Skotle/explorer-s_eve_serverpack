#This is the inventory taking function, but without the taking.
setblock ~ ~ ~ minecraft:yellow_shulker_box

tag @s add NeedsInventory
execute if entity @s[predicate=explorers_eve:blue_skies] as @e[tag=OverworldInventory] if score @s UUID = @p[tag=NeedsInventory] UUID run function explorers_eve:world/blue_skies/give_inventory
execute if entity @s[predicate=explorers_eve:overworld] as @e[tag=BlueSkiesInventory] if score @s UUID = @p[tag=NeedsInventory] UUID run function explorers_eve:world/blue_skies/give_inventory

#Get rid of tags and scoreboards.
scoreboard players reset @s Math
tag @s remove NeedsInventory
setblock ~ ~ ~ witherstormmod:hardened_flesh_block

#Finalize with the tag and effects.
tag @s add KeepingCurseBroken
execute at @s run function explorers_eve:item/charm_of_keeping/effects