#It's nice to mash these functions together.
scoreboard players set @s RandomRange 360
function explorers_eve:random
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s RandomValue
playsound minecraft:entity.witch.throw hostile @a

execute in witherstormmod:bowels positioned 0 0 0 align xyz rotated as @s run summon minecraft:area_effect_cloud ^ ^ ^1 {Duration:2,Tags:["RotationAim"]}

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[0] 1000
execute store result entity @s Motion[0] double 0.0004 run scoreboard players get @s Math

#execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[2] 1000
#execute store result entity @s Motion[1] double 0.0004 run scoreboard players get @s Math
data modify entity @s Motion[1] set value 0.3

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[2] 1000
execute store result entity @s Motion[2] double 0.0004 run scoreboard players get @s Math

kill @e[tag=RotationAim]