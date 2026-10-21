#Don't hurt the user, and copy their rotation data!
data modify entity @s Rotation set from entity @p[tag=ZetaUsed] Rotation
data modify entity @s Owner set from entity @p[tag=ZetaUsed] UUID

#Set the entity's motion based on what direction the player's in.
execute rotated as @s in witherstormmod:bowels positioned 0 0 0 align xyz run summon minecraft:area_effect_cloud ^ ^ ^1 {Duration:2,Tags:["RotationAim"]}

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[0] 1000
execute store result entity @s Motion[0] double 0.003 run scoreboard players get @s Math

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[1] 1000
execute store result entity @s Motion[1] double 0.003 run scoreboard players get @s Math

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[2] 1000
execute store result entity @s Motion[2] double 0.003 run scoreboard players get @s Math

kill @e[tag=RotationAim]
tag @s remove NewZetaShot

summon area_effect_cloud ~ ~ ~ {Tags:["ZetaShotTracker"],Duration:42}
ride @e[tag=ZetaShotTracker,limit=1,sort=nearest] mount @s
scoreboard players operation @e[tag=ZetaShotTracker,limit=1,sort=nearest] ZetaCharges = @p[tag=ZetaUsed] ZetaCharges