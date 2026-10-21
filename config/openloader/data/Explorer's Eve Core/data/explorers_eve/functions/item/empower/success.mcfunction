#Success! Particles! Yay!
tag @s add Success

playsound witherstormmod:command_block_hit block @a ~ ~ ~ 2 1.5
particle minecraft:reverse_portal ~ ~0.75 ~ 0 0 0 3 100
particle minecraft:reverse_portal ~ ~0.75 ~ 0 0 0 2 100
particle minecraft:reverse_portal ~ ~0.75 ~ 0 0 0 1 100

advancement grant @a[distance=..32] only witherstormmod:main/zenith