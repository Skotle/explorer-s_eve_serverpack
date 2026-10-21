#Make particles, then move 'forward' and repeat until leaving the world.
particle witherstormmod:command_block ~ ~ ~ 0.1 0.1 0.1 0 1 force
execute if entity @w[distance=..100] positioned ^ ^ ^0.25 run function explorers_eve:storm/attack/dig/particle
execute unless entity @w[distance=..100] unless block ~ ~ ~ void_air positioned ^ ^ ^0.25 run function explorers_eve:storm/attack/dig/particle