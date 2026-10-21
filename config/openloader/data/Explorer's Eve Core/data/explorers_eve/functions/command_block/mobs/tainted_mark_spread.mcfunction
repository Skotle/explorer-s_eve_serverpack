#Move markers if needed.
spreadplayers ~ ~ 5 32 under 130 false @e[tag=Barrier,distance=..64]
tag @e[tag=CommandMobMark] remove Barrier
execute as @e[tag=CommandMobMark] at @s if block ~ ~-1 ~ barrier run tag @s add Barrier
execute if entity @e[tag=Barrier,distance=..56] run function explorers_eve:command_block/mobs/tainted_mark_spread
