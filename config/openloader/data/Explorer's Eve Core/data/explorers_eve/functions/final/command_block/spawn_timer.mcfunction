#Tick down time until spawning a mob.
scoreboard players remove @s CommandEntityTime 1
execute if score @s CommandEntityTime matches ..-1 run function explorers_eve:final/command_block/spawn_mob
