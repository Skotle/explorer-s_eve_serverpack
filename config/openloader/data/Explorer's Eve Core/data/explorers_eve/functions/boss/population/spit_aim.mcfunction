#It's nice to mash these functions together.
execute in witherstormmod:bowels positioned 0 0 0 align xyz run summon minecraft:area_effect_cloud ^ ^ ^1 {Duration:2,Tags:["RotationAim"]}

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[0] 1000
execute store result entity @s Motion[0] double 0.00075 run scoreboard players get @s Math

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[1] 1000
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get @s Math

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[2] 1000
execute store result entity @s Motion[2] double 0.00075 run scoreboard players get @s Math

kill @e[tag=RotationAim]
tag @s remove NewVenom
data modify entity @s Owner set from entity @e[type=blue_skies:arachnarch,limit=1,sort=nearest] UUID
kill @e[tag=SpitChecked,limit=1,sort=nearest]