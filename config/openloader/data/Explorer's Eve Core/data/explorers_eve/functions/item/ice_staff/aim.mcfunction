#Don't hurt the user, and copy their rotation data!
data modify entity @s Rotation set from entity @p[tag=IceStaffUsed] Rotation
data modify entity @s Owner set from entity @p[tag=IceStaffUsed] UUID

#Set the entity's motion based on what direction the player's in.
execute rotated as @s in witherstormmod:bowels positioned 0 0 0 align xyz run summon minecraft:area_effect_cloud ^ ^ ^1 {Duration:2,Tags:["RotationAim"]}

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[0] 1000
execute store result entity @s Motion[0] double 0.0007 run scoreboard players get @s Math

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[1] 1000
execute store result entity @s Motion[1] double 0.0007 run scoreboard players get @s Math

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[2] 1000
execute store result entity @s Motion[2] double 0.0007 run scoreboard players get @s Math

kill @e[tag=RotationAim]

playsound aether:entity.zephyr.shoot hostile @a ~ ~ ~ 2 1.5
tag @s remove NewIce