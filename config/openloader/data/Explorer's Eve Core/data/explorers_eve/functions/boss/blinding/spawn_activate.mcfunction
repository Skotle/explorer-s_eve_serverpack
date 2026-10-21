#Decide what to spawn.
scoreboard players set @s RandomRange 2
function explorers_eve:random

#Spawn a mob.
playsound blue_skies:entity.artificial_golem.activate hostile @a
particle blue_skies:star_flare 1 1 1 ~ ~1 ~ 0.25 0.5 0.25 0.01 20
execute if score @s RandomValue matches 0 run summon blue_skies:artificial_golem ~ ~ ~ {IsRanged:0b,Health:10f,Attributes:[{Name:generic.max_health,Base:10}]}
execute if score @s RandomValue matches 1 run summon blue_skies:artificial_golem ~ ~ ~ {IsRanged:1b,Health:10f,Attributes:[{Name:generic.max_health,Base:10}]}
execute as @e[type=blue_skies:artificial_golem,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator]
tag @s remove SpawnReady
scoreboard players reset @s BlindingTime