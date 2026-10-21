#Set the entity's motion based on what direction the player's in. and some randomness.
scoreboard players set @s RandomRange 4
function explorers_eve:random
execute if score @s RandomValue matches 0 facing entity @p[gamemode=!spectator] eyes rotated ~30 ~ in witherstormmod:bowels positioned 0 0 0 align xyz run summon minecraft:area_effect_cloud ^ ^ ^1 {Duration:2,Tags:["RotationAim"]}
execute if score @s RandomValue matches 1 facing entity @p[gamemode=!spectator] eyes rotated ~15 ~ in witherstormmod:bowels positioned 0 0 0 align xyz run summon minecraft:area_effect_cloud ^ ^ ^1 {Duration:2,Tags:["RotationAim"]}
execute if score @s RandomValue matches 2 facing entity @p[gamemode=!spectator] eyes rotated ~-15 ~ in witherstormmod:bowels positioned 0 0 0 align xyz run summon minecraft:area_effect_cloud ^ ^ ^1 {Duration:2,Tags:["RotationAim"]}
execute if score @s RandomValue matches 3 facing entity @p[gamemode=!spectator] eyes rotated ~-30 ~ in witherstormmod:bowels positioned 0 0 0 align xyz run summon minecraft:area_effect_cloud ^ ^ ^1 {Duration:2,Tags:["RotationAim"]}

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[0] 1000
execute store result entity @s Motion[0] double 0.004 run scoreboard players get @s Math

execute store result score @s Math run data get entity @e[tag=RotationAim,limit=1] Pos[2] 1000
execute store result entity @s Motion[2] double 0.004 run scoreboard players get @s Math

kill @e[tag=RotationAim]

data modify entity @s Motion[1] set value 0.4d

playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 3 2

#Reset the timer.
scoreboard players set @s RandomRange 300
function explorers_eve:random
scoreboard players operation @s ValkyrieLungeTime = @s RandomValue
scoreboard players add @s ValkyrieLungeTime 500

tag @s add ValkyrieLunging
scoreboard players set @s ValkyrieLungeCount 5