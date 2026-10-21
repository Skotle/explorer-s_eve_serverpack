#Summon one or two markers, then move them.
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["SnowQueenIcicleMark"],Duration:600}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["SnowQueenIcicleMark"],Duration:600}
execute if entity @s[scores={Health=..100}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["SnowQueenIcicleMark"],Duration:600}
spreadplayers ~ ~ 4 5 false @e[tag=SnowQueenIcicleMark,distance=..40]

#Then get them all on the same y level, then move them towards the ceiling.
execute as @e[tag=SnowQueenIcicleMark] store result entity @s Pos[1] double 1 run data get entity @e[tag=IceArenaCenter,limit=1,sort=nearest] Pos[1]
execute as @e[tag=SnowQueenIcicleMark] at @s run function explorers_eve:boss/snow_queen/icicle_raise

#Reset the timer.
scoreboard players set @s RandomRange 50
function explorers_eve:random
scoreboard players operation @s IceFallTime = @s RandomValue
scoreboard players add @s IceFallTime 100