#It's nice to mash these functions together.
tp @s ^ ^ ^2
execute rotated as @s in witherstormmod:bowels positioned 0 0 0 align xyz run summon minecraft:area_effect_cloud ^ ^ ^1 {Duration:2,Tags:["RotationAim"]}

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[0] 1000
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get @s Math
execute store result entity @s power[0] double 0.0001 run scoreboard players get @s Math

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[1] 1000
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get @s Math
execute store result entity @s power[1] double 0.0001 run scoreboard players get @s Math

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[2] 1000
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get @s Math
execute store result entity @s power[2] double 0.0001 run scoreboard players get @s Math

kill @e[tag=RotationAim]
tag @s remove SunSpiritFireball