#Set the entity's motion based on what direction the player's in.
execute facing entity @p[gamemode=!spectator] eyes in witherstormmod:bowels positioned 0 0 0 align xyz run summon minecraft:area_effect_cloud ^ ^ ^1 {Duration:2,Tags:["RotationAim"]}

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[0] 1000
execute store result entity @s Motion[0] double 0.0035 run scoreboard players get @s Math

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[2] 1000
execute store result entity @s Motion[2] double 0.0035 run scoreboard players get @s Math

kill @e[tag=RotationAim]

data modify entity @s Motion[1] set value 0.5d

playsound twilightforest:entity.twilightforest.alpha_yeti.roar hostile @a ~ ~ ~ 3 1.5
playsound minecraft:entity.horse.jump hostile @a ~ ~ ~ 3 0.7