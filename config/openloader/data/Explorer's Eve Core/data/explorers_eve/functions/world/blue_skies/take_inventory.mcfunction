#No charm? Okay, time to do bad magic.
setblock ~ ~ ~ minecraft:yellow_shulker_box

#Clear certain items, prepping to give them back later.
execute store result score $Hearts Math run clear @s twilightforest:knightmetal_ring
execute store result score $Panels Math run clear @s twilightforest:knightmetal_ingot
execute store result score $Keeping Math run clear @s minecraft:carrot_on_a_stick{KeepingCharm:1b}
execute store result score $Zeal Math run clear @s blue_skies:zeal_lighter
execute store result score $Amulet Math run clear @s witherstormmod:amulet
execute store result score $Scroll Math run clear @s blue_skies:alchemy_scroll
execute store result score $Tome Math run clear @s blue_skies:summoning_tome

#Make and label a new marker.
summon marker ~ ~ ~ {Tags:["NewInventory"]}
execute if entity @s[tag=EnteredBlueSkies] run tag @e[tag=NewInventory] add OverworldInventory
execute if entity @s[tag=ExitedBlueSkies] run tag @e[tag=NewInventory] add BlueSkiesInventory
scoreboard players operation @e[tag=NewInventory] UUID = @s UUID

#Give the marker the player's updated inventory.
data modify entity @e[tag=NewInventory,limit=1] data.Inventory set from entity @s Inventory
clear @s
tag @e[tag=NewInventory] remove NewInventory

#Recover inventory from the other marker.
tag @s add NeedsInventory
execute if entity @s[tag=EnteredBlueSkies] as @e[tag=BlueSkiesInventory] if score @s UUID = @p[tag=NeedsInventory] UUID in witherstormmod:bowels positioned 0 200 0 run function explorers_eve:world/blue_skies/give_inventory
execute if entity @s[tag=ExitedBlueSkies] as @e[tag=OverworldInventory] if score @s UUID = @p[tag=NeedsInventory] UUID in witherstormmod:bowels positioned 0 200 0 run function explorers_eve:world/blue_skies/give_inventory

#Return cleared items. These ones can cross dimensions.
execute if score $Hearts Math matches 1.. run function explorers_eve:world/blue_skies/give_heart
execute if score $Panels Math matches 1.. run function explorers_eve:world/blue_skies/give_panel
execute if score $Keeping Math matches 1.. run function explorers_eve:world/blue_skies/give_keeping_charm
execute if score $Zeal Math matches 1.. run function explorers_eve:world/blue_skies/give_zeal_lighter
execute if score $Amulet Math matches 1.. run function explorers_eve:world/blue_skies/give_amulet
execute if score $Scroll Math matches 1.. run function explorers_eve:world/blue_skies/give_alchemy_scroll
execute if score $Tome Math matches 1.. run function explorers_eve:world/blue_skies/give_summoning_tome
scoreboard players reset $Hearts Math
scoreboard players reset $Panels Math
scoreboard players reset $Keeping Math
scoreboard players reset $Zeal Math
scoreboard players reset $Amulet Math
scoreboard players reset $Scroll Math
scoreboard players reset $Tome Math

#Get rid of tags and scoreboards.
scoreboard players reset @s Math
tag @s remove NeedsInventory
setblock ~ ~ ~ witherstormmod:hardened_flesh_block

#Track where the player is.
execute unless predicate explorers_eve:blue_skies run tag @s remove InBlueSkies

#The first time this happens, do special stuff.
execute unless entity @s[tag=VisitedBlueSkies] at @s run function explorers_eve:world/blue_skies/first_visit