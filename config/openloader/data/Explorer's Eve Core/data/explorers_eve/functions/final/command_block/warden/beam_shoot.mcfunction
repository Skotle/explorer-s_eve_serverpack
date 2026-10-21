#It hurts now!
particle minecraft:sonic_boom ~ ~ ~ 0.1 0.1 0.1 0.02 3
execute as @a[distance=..2.5,tag=!BeamHit] run function explorers_eve:final/command_block/warden/beam_damage
execute if entity @s[distance=..100] positioned ^ ^ ^0.75 run function explorers_eve:final/command_block/warden/beam_shoot