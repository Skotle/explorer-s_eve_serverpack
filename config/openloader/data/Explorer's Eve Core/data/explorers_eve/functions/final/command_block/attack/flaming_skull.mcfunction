#Shoot a skull! Yay!
execute in witherstormmod:bowels positioned 0 0 0 align xyz run summon minecraft:area_effect_cloud ^ ^ ^1 {Duration:2,Tags:["RotationAim"]}

#Changing the 'double' value changes the skulls' speed. This amount feels okay.
execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[0] 1000
execute store result entity @s power[0] double 0.00006 run scoreboard players get @s Math

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[1] 1000
execute store result entity @s power[1] double 0.00006 run scoreboard players get @s Math

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[2] 1000
execute store result entity @s power[2] double 0.00006 run scoreboard players get @s Math

kill @e[tag=RotationAim]
tag @s remove NewFlamingSkull