#It's nice to mash these functions together.
playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 3 1.5

execute in witherstormmod:bowels positioned 0 0 0 align xyz run summon minecraft:area_effect_cloud ^ ^ ^1 {Duration:2,Tags:["RotationAim"]}

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[0] 1000
execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s Math

#execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[2] 1000
#execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s Math
#data modify entity @s Motion[1] set value 0.3

execute if entity @a[gamemode=!spectator,distance=24..] run data modify entity @s Motion[1] set value 2d
execute if entity @a[gamemode=!spectator,distance=19..24] run data modify entity @s Motion[1] set value 1.5d
execute if entity @a[gamemode=!spectator,distance=9..19] run data modify entity @s Motion[1] set value 0.75d
execute if entity @a[gamemode=!spectator,distance=..9] run data modify entity @s Motion[1] set value 0.3d

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[2] 1000
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s Math

kill @e[tag=RotationAim]