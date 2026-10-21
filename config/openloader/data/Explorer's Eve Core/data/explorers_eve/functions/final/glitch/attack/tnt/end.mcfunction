#Grow thorns.
tag @s remove GlitchAttacking
tag @s remove TNTActive

playsound witherstormmod:super_tnt_fuse hostile @a[distance=..100] ~ ~ ~ 4 2 1
execute as @e[tag=GlitchTNT] at @s run particle dust 1 0 0 3 ~ ~0.5 ~ 0.6 0.6 0.6 1 30
execute as @e[tag=GlitchTNT] run data modify entity @s Fuse set value 50