#Scattershot manager.
scoreboard players remove @s CommandSkullWait 1
execute if score @s CommandSkullWait matches ..-1 run function explorers_eve:final/command_block/attack/scatter_aim