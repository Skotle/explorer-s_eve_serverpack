#Make particles, then move 'forward' and repeat.
particle witherstormmod:command_block ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[distance=..32]
particle minecraft:dust 1 0 1 0 ~ ~ ~ 0.1 0.1 0.1 1 1 force @a[distance=..32]
execute positioned ~-0.1 ~-0.1 ~-0.1 if entity @s[dx=0] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] run function explorers_eve:command_block/mobs/parrot_buff_effects
execute unless entity @s[tag=ParrotBuffed] positioned ^ ^ ^0.25 run function explorers_eve:command_block/mobs/parrot_buff_particles
tag @s remove ParrotBuffed