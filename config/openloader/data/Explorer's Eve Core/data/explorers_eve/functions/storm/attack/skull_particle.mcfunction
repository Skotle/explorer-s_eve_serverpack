#Make particles, then move 'forward' and repeat until hitting anything other than air.
particle witherstormmod:command_block ~ ~ ~ 0.1 0.1 0.1 0 1 force
execute if entity @w[distance=..100] positioned ^ ^ ^0.25 run function explorers_eve:storm/attack/skull_particle
execute unless entity @w[distance=..100] if block ~ ~ ~ air positioned ^ ^ ^0.25 run function explorers_eve:storm/attack/skull_particle