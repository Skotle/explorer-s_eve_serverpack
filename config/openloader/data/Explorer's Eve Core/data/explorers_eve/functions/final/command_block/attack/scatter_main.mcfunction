#The block's hurt? Then progress the fight.
scoreboard players add @s CommandSkullTime 1

execute if score @s CommandSkullTime matches 10 run function explorers_eve:final/command_block/attack/scatter_hold

execute if score @s CommandSkullTime matches 11..79 as @e[tag=RematchScatterSource,limit=1,sort=nearest] at @s run function explorers_eve:final/command_block/attack/scatter_timer

execute if score @s CommandSkullTime matches 80 run function explorers_eve:final/command_block/attack/scatter_end