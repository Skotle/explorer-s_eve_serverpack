#Spawn the mark that'll shoot skulls.
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:110,Tags:["CommandSkullSource"]}
playsound minecraft:entity.wither.ambient hostile @a[predicate=explorers_eve:bowels] ~ ~ ~ 4 0.5 0.3
scoreboard players set @e[tag=CommandSkullSource,limit=1,sort=nearest] CommandSkullTime 45

#Counts how many mobs are active. Based on that count, set the delay before more wither skulls happen.
execute store result score @s CommandEntityCount run execute if entity @e[tag=CommandMob,distance=..100]
execute if score @s CommandPhase matches 1..5 run scoreboard players add @s CommandEntityCount 16
execute if score @s CommandPhase matches 6..11 run scoreboard players add @s CommandEntityCount 8
execute if entity @s[tag=Resummoned] run scoreboard players remove @s CommandEntityCount 8
scoreboard players set @s RandomRange 5
execute if score @s CommandEntityCount matches 8.. run scoreboard players add @s RandomRange 5
execute if score @s CommandEntityCount matches 16.. run scoreboard players add @s RandomRange 5
execute if score @s CommandEntityCount matches 24.. run scoreboard players add @s RandomRange 5
function explorers_eve:random
scoreboard players operation @s CommandSkullWait = @s RandomValue
scoreboard players add @s CommandSkullWait 10
execute if score @s CommandEntityCount matches 16.. run scoreboard players add @s CommandSkullWait 5