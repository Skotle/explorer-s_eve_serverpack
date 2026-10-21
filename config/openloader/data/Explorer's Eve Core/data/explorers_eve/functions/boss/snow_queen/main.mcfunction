#Main manager for Snow Queen changes. She's initialized every tick to be sure the arena is centered.
#If the marker ever vanishes for some reason, make a new one.
execute unless entity @e[tag=IceArenaCenter,distance=..60] run summon marker ~ ~ ~ {Tags:["IceArenaCenter"]}

#Keep track of its health.
execute store result score @s Health run data get entity @s Health

#As the fight goes on, break the ice.
execute if entity @s[tag=!Layer1Broken,scores={Health=..135}] at @e[tag=IceArenaCenter,limit=1,sort=nearest,distance=..40] run function explorers_eve:boss/snow_queen/break_layer
execute if entity @s[tag=!Layer2Broken,scores={Health=..70}] at @e[tag=IceArenaCenter,limit=1,sort=nearest,distance=..40] run function explorers_eve:boss/snow_queen/break_layer

#Every now and then, she places an ice cube on the player.
scoreboard players remove @s IceCubeTime 5
scoreboard players remove @s[scores={Health=..150}] IceCubeTime 2
scoreboard players remove @s[scores={Health=..100}] IceCubeTime 2
scoreboard players remove @s[tag=FinalBattle] IceCubeTime 10
execute if entity @s[scores={IceCubeTime=..-1}] at @p[gamemode=!spectator,distance=..40,nbt={OnGround:1b}] anchored eyes align xyz positioned ~0.5 ~1 ~0.5 run function explorers_eve:boss/snow_queen/cube_mark

#The cube makes particles before it gets placed.
execute as @e[tag=SnowQueenCube,distance=..128] at @s run function explorers_eve:boss/snow_queen/cube_timer

#Every now and then, ice cubes fall from the ceiling.
scoreboard players remove @s IceFallTime 5
scoreboard players remove @s[scores={Health=..150}] IceFallTime 2
scoreboard players remove @s[scores={Health=..100}] IceFallTime 2
execute if entity @s[scores={IceFallTime=..-1},tag=!FinalBattle] at @e[tag=IceArenaCenter] positioned ~ ~2 ~ run function explorers_eve:boss/snow_queen/icicle_start
execute if entity @s[scores={IceFallTime=..-1},tag=FinalBattle] positioned ~ ~2 ~ run function explorers_eve:boss/snow_queen/ice_toss

#Icicles cling to the ceiling for a little while.
execute as @e[tag=SnowQueenIcicle,distance=..128] at @s run function explorers_eve:boss/snow_queen/icicle_timer

#No getting trapped in ice!
execute if block ~ ~1 ~ blue_ice run function explorers_eve:boss/snow_queen/break_ice
execute as @e[type=twilightforest:ice_crystal,distance=..40] at @s if block ~ ~1 ~ blue_ice run tp @s ~ ~5 ~

#In the rematch, ice crystals are replaced.
execute if entity @s[tag=FinalBattle] as @e[type=twilightforest:ice_crystal,distance=..40] at @s run function explorers_eve:boss/snow_queen/crystal_replace