#Fireballs try to transform into non-explosive variants.
execute in witherstormmod:bowels positioned 0 0 0 align xyz run summon minecraft:area_effect_cloud ^ ^ ^1 {Duration:2,Tags:["RotationAim"]}

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[0] 1000
execute store result entity @s Motion[0] double 0.002 run scoreboard players get @s Math

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[1] 1000
execute store result entity @s Motion[1] double 0.002 run scoreboard players get @s Math

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[2] 1000
execute store result entity @s Motion[2] double 0.002 run scoreboard players get @s Math

kill @e[tag=RotationAim]
tag @s add CloudEmpowered
effect give @s invisibility infinite 0 true

summon minecraft:area_effect_cloud ~ ~ ~ {Duration:298,Tags:["CloudEmpowerMark"]}
ride @e[tag=CloudEmpowerMark,limit=1,sort=nearest] mount @s