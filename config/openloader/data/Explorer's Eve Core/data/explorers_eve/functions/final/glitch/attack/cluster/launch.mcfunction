#Set the entity's motion based on what direction the player's in.
execute facing entity @p[gamemode=!spectator] eyes in witherstormmod:bowels positioned 0 0 0 align xyz run summon minecraft:area_effect_cloud ^ ^ ^1 {Duration:2,Tags:["RotationAim"]}

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[0] 1000
execute store result entity @s Motion[0] double 0.0015 run scoreboard players get @s Math

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[2] 1000
execute store result entity @s Motion[2] double 0.0015 run scoreboard players get @s Math

kill @e[tag=RotationAim]

execute if entity @a[gamemode=!spectator,distance=..30] run data modify entity @s Motion[1] set value 0.25d
execute if entity @a[gamemode=!spectator,distance=31..40] run data modify entity @s Motion[1] set value 0.5d
execute if entity @a[gamemode=!spectator,distance=41..50] run data modify entity @s Motion[1] set value 0.75d
execute if entity @a[gamemode=!spectator,distance=51..] run data modify entity @s Motion[1] set value 1d
data modify entity @s NoGravity set value 0b

playsound aether:entity.zephyr.shoot hostile @a ~ ~ ~ 3 0.7
execute at @s run tp @s ~ ~4 ~
tag @s remove ClusterSpin