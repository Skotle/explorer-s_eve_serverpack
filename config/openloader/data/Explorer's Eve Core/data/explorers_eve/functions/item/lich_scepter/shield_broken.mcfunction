#Triggered via scoreboard check in the tick command.
scoreboard players reset @s FortificationBroken

#Heal a little.
effect give @s[tag=LichScepterActive] minecraft:regeneration 1 3

#If fighting Ignis, he breaks all the shields at once.
execute if entity @e[type=cataclysm:ignis,distance=..8] run function explorers_eve:item/lich_scepter/break_shields

#Test how many shields are left. If none, no more Lich Scepter!
execute store result score @s Math run data get entity @s ForgeCaps."twilightforest:cap_shield".tempshields
execute unless score @s Math matches 1.. run function explorers_eve:item/lich_scepter/end