#Make particles, then move 'forward' and repeat until hitting anything other than air.
particle witherstormmod:command_block ~ ~ ~ 0.1 0.1 0.1 0 1 force
execute if entity @s[distance=..100] if block ~ ~ ~ air positioned ^ ^ ^0.25 run function explorers_eve:final/command_block/attack/skull_particle