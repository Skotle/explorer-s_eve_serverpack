#Shoot a skull.
execute in witherstormmod:bowels positioned 0 0 0 align xyz run summon minecraft:area_effect_cloud ^ ^ ^1 {Duration:2,Tags:["RotationAim"]}
execute as @e[tag=WitherSkull,limit=1,sort=nearest] run data modify entity @s Owner set from entity @e[type=wither,limit=1,sort=nearest] UUID

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[0] 1000
execute store result entity @s power[0] double 0.00015 run scoreboard players get @s Math

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[1] 1000
execute store result entity @s power[1] double 0.00015 run scoreboard players get @s Math

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[2] 1000
execute store result entity @s power[2] double 0.00015 run scoreboard players get @s Math

kill @e[tag=RotationAim]
tag @s remove NewSkull