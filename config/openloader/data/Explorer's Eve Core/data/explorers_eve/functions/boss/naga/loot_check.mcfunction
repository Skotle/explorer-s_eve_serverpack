#If only one Naga is left, it gets to drop real loot.
execute store result score @s Math run execute if entity @e[type=twilightforest:naga,distance=..100,scores={Health=1..}]
execute if entity @s[tag=NoLoot,scores={Math=1}] run function explorers_eve:boss/naga/loot_allow