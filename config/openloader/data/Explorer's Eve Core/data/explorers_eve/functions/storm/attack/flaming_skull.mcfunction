#Using the magic of converting coordinates into numbers, generate motion to murder the player!
execute in witherstormmod:bowels positioned 0 0 0 align xyz run summon minecraft:area_effect_cloud ^ ^ ^1 {Duration:2,Tags:["RotationAim"]}
data modify entity @s Owner set from entity @e[type=#explorers_eve:wither_storm_part,limit=1,sort=nearest] UUID

#Changing the 'double' value changes the skulls' speed. This amount feels okay. DEBUG, no longer speeding up blue skulls.
execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[0] 1000
scoreboard players operation @s Math *= @w SkullSpeedMultiplier
execute store result entity @s power[0] double 0.00001 run scoreboard players get @s Math
execute store result entity @s[type=witherstormmod:blue_flaming_wither_skull] power[0] double 0.000015 run scoreboard players get @s Math

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[1] 1000
scoreboard players operation @s Math *= @w SkullSpeedMultiplier
execute store result entity @s power[1] double 0.00001 run scoreboard players get @s Math
execute store result entity @s[type=witherstormmod:blue_flaming_wither_skull] power[1] double 0.000015 run scoreboard players get @s Math

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[2] 1000
scoreboard players operation @s Math *= @w SkullSpeedMultiplier
execute store result entity @s power[2] double 0.00001 run scoreboard players get @s Math
execute store result entity @s[type=witherstormmod:blue_flaming_wither_skull] power[2] double 0.000015 run scoreboard players get @s Math

kill @e[tag=RotationAim]
tag @s remove NewFlamingSkull