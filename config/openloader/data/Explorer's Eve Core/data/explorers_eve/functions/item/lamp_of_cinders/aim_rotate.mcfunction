#Set the entity's motion based on what direction the player's in.
execute in witherstormmod:bowels positioned 0 0 0 align xyz run summon minecraft:area_effect_cloud ^ ^ ^1 {Duration:2,Tags:["RotationAim"]}

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[0] 1000
execute store result entity @s Motion[0] double 0.0005 run scoreboard players get @s Math
execute store result entity @s XSpeed double 0.0005 run scoreboard players get @s Math

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[1] 1000
execute store result entity @s Motion[1] double 0.0005 run scoreboard players get @s Math
execute store result entity @s YSpeed double 0.0005 run scoreboard players get @s Math

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[2] 1000
execute store result entity @s Motion[2] double 0.0005 run scoreboard players get @s Math
execute store result entity @s ZSpeed double 0.0005 run scoreboard players get @s Math

data modify entity @s TicksInAir set value 200

kill @e[tag=RotationAim]
tag @s remove LampRotate