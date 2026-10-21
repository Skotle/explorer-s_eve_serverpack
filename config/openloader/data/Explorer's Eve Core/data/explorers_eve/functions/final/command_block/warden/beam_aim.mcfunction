#Warning particles.
particle minecraft:enchanted_hit ~ ~ ~ 0.1 0.1 0.1 0.02 3
execute if entity @s[distance=..100] positioned ^ ^ ^0.75 run function explorers_eve:final/command_block/warden/beam_aim