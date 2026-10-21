#Fireballs try to transform into non-explosive variants.
execute in witherstormmod:bowels positioned 0 0 0 align xyz run summon minecraft:area_effect_cloud ^ ^ ^1 {Duration:2,Tags:["RotationAim"]}
summon small_fireball ~ ~ ~ {Tags:["NewFireball"]}

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[0] 1000
execute store result entity @e[tag=NewFireball,limit=1,sort=nearest] power[0] double 0.000075 run scoreboard players get @s Math

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[1] 1000
execute store result entity @e[tag=NewFireball,limit=1,sort=nearest] power[1] double 0.000075 run scoreboard players get @s Math

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[2] 1000
execute store result entity @e[tag=NewFireball,limit=1,sort=nearest] power[2] double 0.000075 run scoreboard players get @s Math

kill @e[tag=RotationAim]
kill @s
tag @e[tag=NewFireball,limit=1,sort=nearest] remove NewFireball