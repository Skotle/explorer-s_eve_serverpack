#Set the entity's motion based on what direction the player's in.
execute facing entity @p[tag=HammerUsed] feet rotated ~180 0 in witherstormmod:bowels positioned 0 0 0 align xyz run summon minecraft:area_effect_cloud ^ ^ ^1 {Duration:2,Tags:["RotationAim"]}

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[0] 1000
execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s Math

scoreboard players set @s RandomRange 30
function explorers_eve:random
scoreboard players add @s RandomValue 90
execute store result entity @s Motion[1] double 0.008 run scoreboard players get @s RandomValue

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[2] 1000
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s Math

kill @e[tag=RotationAim]

playsound aether:entity.zephyr.shoot hostile @a ~ ~ ~ 2 1.5

#Also deal damage.
damage @s 10 blue_skies:slam by @p[tag=HammerUsed]