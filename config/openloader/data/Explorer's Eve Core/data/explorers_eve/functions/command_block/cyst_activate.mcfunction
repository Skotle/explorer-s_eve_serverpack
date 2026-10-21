#Activate the cysts.
tag @s add BarrierActive
tag @s add Phase5Barrier
tag @e[tag=CommandBlockCyst,distance=..64] add BarrierSource
execute as @e[tag=CommandBlockCyst,distance=..64] at @s run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 witherstormmod:tainted_flesh_block replace witherstormmod:hardened_flesh_block
execute as @e[tag=CommandBlockCyst,distance=..64] at @s run setblock ~ ~ ~ witherstormmod:tainted_dust_block replace