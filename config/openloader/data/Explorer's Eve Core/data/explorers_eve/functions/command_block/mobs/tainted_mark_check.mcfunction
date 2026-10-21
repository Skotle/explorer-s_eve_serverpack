#How many mobs exist?
execute store result score @s CommandEntityCount run execute if entity @e[tag=CommandMob,distance=..100]
execute if score @s CommandPhase matches 1..5 run scoreboard players add @s CommandEntityCount 16
execute if score @s CommandPhase matches 6..11 run scoreboard players add @s CommandEntityCount 8
execute if entity @s[tag=Resummoned] run scoreboard players remove @s CommandEntityCount 8

#If there are too few mobs, spawn more.
execute unless score @s CommandEntityCount matches 32.. run function explorers_eve:command_block/mobs/tainted_mark

#Don't forget to reset this!
scoreboard players set @s CommandEntityTime 5
execute if score @s CommandEntityCount matches 16.. run scoreboard players add @s CommandEntityTime 1
execute if score @s CommandEntityCount matches 24.. run scoreboard players add @s CommandEntityTime 1
execute if score @s CommandEntityCount matches 32.. run scoreboard players add @s CommandEntityTime 1
execute if entity @s[tag=Resummoned] run scoreboard players remove @s CommandEntityTime 1